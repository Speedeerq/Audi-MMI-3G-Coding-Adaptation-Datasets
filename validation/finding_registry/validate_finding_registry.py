#!/usr/bin/env python3

from __future__ import annotations

import json
import re
import sys
from pathlib import Path
from typing import Any

ALLOWED_STATUSES = {
    "CONFIRMED",
    "VARIANT",
    "TO VERIFY",
    "HYPOTHESIS",
    "UNKNOWN",
    "BLOCKED",
}

ALLOWED_MATCH_STATUSES = {
    "DIRECT_MATCH",
    "PARTIAL_SUPPORT_ONLY",
    "NO_DIRECT_MATCH",
    "OUT_OF_DOMAIN_NO_MATCH",
    "OUT_OF_SCOPE",
}

FINDING_ID_RE = re.compile(r"^MMI3G-[A-Z0-9-]+-[0-9]{4}$")
SHA40_RE = re.compile(r"^[0-9a-f]{40}$")


def fail(message: str) -> None:
    raise ValueError(message)


def load_json(path: Path) -> dict[str, Any]:
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except FileNotFoundError as exc:
        fail(f"missing file: {path}")
        raise exc
    except json.JSONDecodeError as exc:
        fail(f"invalid JSON in {path}: {exc}")
        raise exc

    if not isinstance(data, dict):
        fail(f"top-level JSON object required: {path}")
    return data


def assert_relative_repo_path(repo_root: Path, raw_path: str, context: str) -> None:
    path = Path(raw_path)
    if path.is_absolute():
        fail(f"absolute path forbidden in {context}: {raw_path}")
    if ".." in path.parts:
        fail(f"path traversal forbidden in {context}: {raw_path}")
    if not (repo_root / path).exists():
        fail(f"unresolved source path in {context}: {raw_path}")


def validate_registry(repo_root: Path, registry: dict[str, Any]) -> set[str]:
    if registry.get("workstream") != "AUDIMMI-MMI3G-KB-RECONCILE-001":
        fail("unexpected workstream")
    if registry.get("repository") != "Speedeerq/Audi-MMI-3G-Coding-Adaptation-Datasets":
        fail("unexpected repository")
    if registry.get("authorityRole") != "DOMAIN_KNOWLEDGE_AUTHORITY":
        fail("unexpected authority role")

    source_sha = registry.get("sourceCommitSha")
    if not isinstance(source_sha, str) or not SHA40_RE.fullmatch(source_sha):
        fail("sourceCommitSha must be a 40-character lowercase hex SHA")

    policy = registry.get("policy")
    if not isinstance(policy, dict):
        fail("policy object missing")

    expected_policy = {
        "repositoryAuthorityDoesNotImplyGlobalClaim": True,
        "preserveVariantScope": True,
        "preserveObservationVsInterpretation": True,
        "autoCloseDownstreamGaps": False,
        "rawVehicleEvidenceDuplicated": False,
    }
    for key, expected in expected_policy.items():
        if policy.get(key) is not expected:
            fail(f"policy invariant failed: {key}={policy.get(key)!r}, expected {expected!r}")

    findings = registry.get("findings")
    if not isinstance(findings, list) or not findings:
        fail("findings must be a non-empty array")

    finding_ids: set[str] = set()
    for index, finding in enumerate(findings):
        if not isinstance(finding, dict):
            fail(f"finding[{index}] must be an object")

        finding_id = finding.get("findingId")
        if not isinstance(finding_id, str) or not FINDING_ID_RE.fullmatch(finding_id):
            fail(f"invalid findingId at finding[{index}]: {finding_id!r}")
        if finding_id in finding_ids:
            fail(f"duplicate findingId: {finding_id}")
        finding_ids.add(finding_id)

        claim_status = finding.get("claimStatus")
        if claim_status not in ALLOWED_STATUSES:
            fail(f"invalid claimStatus for {finding_id}: {claim_status!r}")

        if "interpretationStatus" in finding and finding["interpretationStatus"] not in ALLOWED_STATUSES:
            fail(
                f"invalid interpretationStatus for {finding_id}: "
                f"{finding['interpretationStatus']!r}"
            )

        scope = finding.get("scope")
        if not isinstance(scope, str) or not scope.strip():
            fail(f"scope missing for {finding_id}")

        semantic_boundary = finding.get("semanticBoundary")
        if not isinstance(semantic_boundary, str) or not semantic_boundary.strip():
            fail(f"semanticBoundary missing for {finding_id}")

        source_paths = finding.get("sourcePaths")
        if not isinstance(source_paths, list) or not source_paths:
            fail(f"sourcePaths missing for {finding_id}")
        for source_path in source_paths:
            if not isinstance(source_path, str):
                fail(f"non-string source path for {finding_id}")
            assert_relative_repo_path(repo_root, source_path, finding_id)

    vehicle_links = registry.get("vehicleEvidenceLinks")
    if not isinstance(vehicle_links, list):
        fail("vehicleEvidenceLinks must be an array")
    for index, link in enumerate(vehicle_links):
        if not isinstance(link, dict):
            fail(f"vehicleEvidenceLinks[{index}] must be an object")
        if link.get("authorityDisposition") != "VEHICLE_SCOPED_REFERENCE":
            fail(f"vehicle evidence authority escalation at index {index}")
        source_path = link.get("sourcePath")
        if not isinstance(source_path, str):
            fail(f"vehicle sourcePath missing at index {index}")
        assert_relative_repo_path(repo_root, source_path, f"vehicleEvidenceLinks[{index}]")

    gaps = registry.get("downstreamGapReconciliation")
    if not isinstance(gaps, list):
        fail("downstreamGapReconciliation must be an array")

    seen_gaps: set[str] = set()
    for index, gap in enumerate(gaps):
        if not isinstance(gap, dict):
            fail(f"downstreamGapReconciliation[{index}] must be an object")

        gap_id = gap.get("gapId")
        if not isinstance(gap_id, str) or not gap_id:
            fail(f"gapId missing at index {index}")
        if gap_id in seen_gaps:
            fail(f"duplicate gapId: {gap_id}")
        seen_gaps.add(gap_id)

        match_status = gap.get("matchStatus")
        if match_status not in ALLOWED_MATCH_STATUSES:
            fail(f"invalid matchStatus for {gap_id}: {match_status!r}")

        refs = gap.get("supportingFindingIds")
        if not isinstance(refs, list):
            fail(f"supportingFindingIds must be an array for {gap_id}")
        for finding_id in refs:
            if finding_id not in finding_ids:
                fail(f"unresolved supporting finding reference in {gap_id}: {finding_id}")

        decision = gap.get("decision")
        if not isinstance(decision, str) or not decision:
            fail(f"decision missing for {gap_id}")

        if match_status != "DIRECT_MATCH":
            closure_tokens = {"CLOSED", "CONFIRMED", "RESOLVED"}
            decision_tokens = set(re.split(r"[^A-Z0-9]+", decision.upper()))
            if closure_tokens & decision_tokens and not decision.upper().startswith("REMAINS_"):
                fail(f"non-direct gap appears closed: {gap_id} -> {decision}")

    return finding_ids


def validate_reference_manifest(
    registry: dict[str, Any],
    finding_ids: set[str],
    manifest: dict[str, Any],
) -> None:
    if manifest.get("sourceRepository") != registry.get("repository"):
        fail("reference manifest sourceRepository mismatch")
    if manifest.get("sourceAuthorityRole") != registry.get("authorityRole"):
        fail("reference manifest sourceAuthorityRole mismatch")
    if manifest.get("sourceCommitSha") != registry.get("sourceCommitSha"):
        fail("reference manifest sourceCommitSha mismatch")
    if manifest.get("consumerRole") != "PLATFORM_CONSUMER_NORMALIZATION":
        fail("unexpected consumer role")
    if manifest.get("mode") != "REFERENCE_ONLY_FAIL_CLOSED":
        fail("reference manifest must be REFERENCE_ONLY_FAIL_CLOSED")

    expected_false = {
        "rawEvidenceCopied",
        "automaticPromotionAllowed",
        "automaticGapClosureAllowed",
    }
    for key in expected_false:
        if manifest.get(key) is not False:
            fail(f"reference manifest safety invariant failed: {key}")

    eligible = manifest.get("eligibleReferences")
    if not isinstance(eligible, list):
        fail("eligibleReferences must be an array")
    for index, item in enumerate(eligible):
        if not isinstance(item, dict):
            fail(f"eligibleReferences[{index}] must be an object")
        finding_id = item.get("findingId")
        if finding_id not in finding_ids:
            fail(f"eligible reference does not resolve: {finding_id}")

    registry_gap_ids = {
        gap["gapId"]
        for gap in registry.get("downstreamGapReconciliation", [])
        if isinstance(gap, dict) and isinstance(gap.get("gapId"), str)
    }
    manifest_gap_ids = {
        gap["gapId"]
        for gap in manifest.get("gapReview", [])
        if isinstance(gap, dict) and isinstance(gap.get("gapId"), str)
    }
    if registry_gap_ids != manifest_gap_ids:
        fail(
            "gap-set mismatch between registry and reference manifest: "
            f"registry={sorted(registry_gap_ids)}, manifest={sorted(manifest_gap_ids)}"
        )

    safety = manifest.get("safety")
    if not isinstance(safety, dict):
        fail("reference manifest safety object missing")
    for key in (
        "databaseModified",
        "secretsModified",
        "deploymentPerformed",
        "vehicleStateModified",
        "remoteRepositoryModified",
    ):
        if safety.get(key) is not False:
            fail(f"reference manifest safety state must be false: {key}")


def main() -> int:
    repo_root = Path(__file__).resolve().parents[2]
    registry_path = repo_root / "01_MMI_3G_HIGH" / "FINDINGS" / "FINDING_REGISTRY_V1.json"
    manifest_path = repo_root / "00_PROJECT" / "REMOTE_PLATFORM_REFERENCE_MANIFEST_2026-09-04.json"

    registry = load_json(registry_path)
    manifest = load_json(manifest_path)

    finding_ids = validate_registry(repo_root, registry)
    validate_reference_manifest(registry, finding_ids, manifest)

    print(
        "PASS: finding registry invariants; "
        f"findings={len(finding_ids)}; "
        f"gaps={len(registry.get('downstreamGapReconciliation', []))}; "
        "reference_manifest=PASS"
    )
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except ValueError as exc:
        print(f"FAIL: {exc}", file=sys.stderr)
        raise SystemExit(1)
