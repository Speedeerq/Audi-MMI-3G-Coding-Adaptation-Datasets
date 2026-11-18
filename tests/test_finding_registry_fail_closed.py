"""Offline regression tests for the existing AudiMMI MMI3G authority validator.

Execute: python3 -m unittest discover -s tests -p 'test_finding_registry_fail_closed.py' -v
No network, vehicles, firmware writes, secrets, or production database access.
"""
from __future__ import annotations

import copy
import importlib.util
import json
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
VALIDATOR = ROOT / "validation/finding_registry/validate_finding_registry.py"
REGISTRY = ROOT / "01_MMI_3G_HIGH/FINDINGS/FINDING_REGISTRY_V1.json"
MANIFEST = ROOT / "00_PROJECT/REMOTE_PLATFORM_REFERENCE_MANIFEST_2026-09-04.json"


def load_validator():
    spec = importlib.util.spec_from_file_location("mmi3g_registry_validator", VALIDATOR)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Cannot load validator: {VALIDATOR}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


class FindingRegistryFailClosedTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.validator = load_validator()
        cls.registry = json.loads(REGISTRY.read_text(encoding="utf-8"))
        cls.manifest = json.loads(MANIFEST.read_text(encoding="utf-8"))

    def check_both(self, registry=None, manifest=None):
        registry = copy.deepcopy(self.registry if registry is None else registry)
        manifest = copy.deepcopy(self.manifest if manifest is None else manifest)
        finding_ids = self.validator.validate_registry(ROOT, registry)
        self.validator.validate_reference_manifest(registry, finding_ids, manifest)

    def test_01_current_corpus_accepted(self):
        self.check_both()

    def test_02_duplicate_finding_rejected(self):
        registry = copy.deepcopy(self.registry)
        registry["findings"].append(copy.deepcopy(registry["findings"][0]))
        with self.assertRaises(ValueError):
            self.check_both(registry=registry)

    def test_03_missing_evidence_rejected(self):
        registry = copy.deepcopy(self.registry)
        registry["findings"][0]["sourcePaths"] = ["missing/not-found.json"]
        with self.assertRaises(ValueError):
            self.check_both(registry=registry)

    def test_04_source_sha_mismatch_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["sourceCommitSha"] = "0" * 40
        with self.assertRaises(ValueError):
            self.check_both(manifest=manifest)

    def test_05_remains_closed_bypass_rejected(self):
        registry = copy.deepcopy(self.registry)
        gap = next(g for g in registry["downstreamGapReconciliation"]
                   if g["matchStatus"] != "DIRECT_MATCH")
        gap["decision"] = "REMAINS_CLOSED"
        with self.assertRaises(ValueError):
            self.check_both(registry=registry)

    def test_06_duplicate_manifest_gap_review_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["gapReview"].append(copy.deepcopy(manifest["gapReview"][0]))
        with self.assertRaises(ValueError):
            self.check_both(manifest=manifest)

    def test_07_manifest_gap_match_promotion_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        gap = next(g for g in manifest["gapReview"] if g["domainMatch"] != "DIRECT_MATCH")
        gap["domainMatch"] = "DIRECT_MATCH"
        with self.assertRaises(ValueError):
            self.check_both(manifest=manifest)

    def test_08_duplicate_eligible_reference_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["eligibleReferences"].append(copy.deepcopy(manifest["eligibleReferences"][0]))
        with self.assertRaises(ValueError):
            self.check_both(manifest=manifest)

    def test_09_symlink_escape_rejected(self):
        with tempfile.TemporaryDirectory() as tmp:
            base = Path(tmp)
            repo = base / "repo"
            repo.mkdir()
            external = base / "external_evidence.txt"
            external.write_text("synthetic marker", encoding="utf-8")
            link = repo / "linked_evidence.txt"
            try:
                link.symlink_to(external)
            except (OSError, NotImplementedError):
                self.skipTest("symlinks unavailable")
            with self.assertRaises(ValueError):
                self.validator.assert_relative_repo_path(
                    repo, "linked_evidence.txt", "synthetic negative test"
                )


    def test_10_manifest_cannot_claim_resolved_gap(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["gapReview"][0]["result"] = "RESOLVED"
        with self.assertRaises(ValueError):
            self.check_both(manifest=manifest)

    def test_11_manifest_cannot_omit_gap_result(self):
        manifest = copy.deepcopy(self.manifest)
        del manifest["gapReview"][0]["result"]
        with self.assertRaises(ValueError):
            self.check_both(manifest=manifest)

    def test_12_promotion_cannot_claim_global_authority(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["eligibleReferences"][0]["promotion"] = "globally confirmed"
        with self.assertRaises(ValueError):
            self.check_both(manifest=manifest)

    def test_13_unhashable_domain_references_fail_cleanly(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["gapReview"][0]["domainFindingIds"] = [{"findingId": "fake"}]
        with self.assertRaises(ValueError):
            self.check_both(manifest=manifest)

    def test_14_unhashable_claim_status_fails_cleanly(self):
        registry = copy.deepcopy(self.registry)
        registry["findings"][0]["claimStatus"] = ["CONFIRMED"]
        with self.assertRaises(ValueError):
            self.check_both(registry=registry)

    def test_15_directory_is_not_an_evidence_file(self):
        registry = copy.deepcopy(self.registry)
        registry["findings"][0]["sourcePaths"] = ["00_PROJECT"]
        with self.assertRaises(ValueError):
            self.check_both(registry=registry)

if __name__ == "__main__":
    unittest.main()
