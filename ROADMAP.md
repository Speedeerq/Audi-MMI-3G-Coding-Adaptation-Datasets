# ROADMAP

## Navigation

| Area | Link |
|---|---|
| Repository navigation | [NAVIGATION.md](NAVIGATION.md) |
| Root README | [README.md](README.md) |
| Authority model | [00_PROJECT/AUTHORITY_MODEL.md](00_PROJECT/AUTHORITY_MODEL.md) |
| Governance sync | [00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md](00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md) |
| Canonical findings | [01_MMI_3G_HIGH/FINDINGS/README.md](01_MMI_3G_HIGH/FINDINGS/README.md) |
| Remote reference manifest | [00_PROJECT/REMOTE_PLATFORM_REFERENCE_MANIFEST_2026-09-04.json](00_PROJECT/REMOTE_PLATFORM_REFERENCE_MANIFEST_2026-09-04.json) |
| Reconciliation report | [13_RELEASE/RECONCILIATION_REPORT_2026-09-04.md](13_RELEASE/RECONCILIATION_REPORT_2026-09-04.md) |
| Changelog | [CHANGELOG.md](CHANGELOG.md) |
| MMI 3G High index | [01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md](01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md) |

## Project state

Current candidate state:

```text
v0.4.1 — FINDING_RECONCILIATION_CANDIDATE
Governance synchronized
Domain finding registry created
Remote gap review completed fail-closed
Open technical gaps retained
```

The repository is authoritative for Audi MMI 3G domain knowledge within the scope and provenance of each finding. Historical status text is not mass-promoted; current promoted knowledge is represented by the canonical finding registry candidate.

## Three-level authority model

| Level | Repository | Role |
|---|---|---|
| 1 | `Speedeerq/audi-a4-b8-master-workshop-manual` | `VEHICLE_EVIDENCE_AUTHORITY` |
| 2 | `Speedeerq/Audi-MMI-3G-Coding-Adaptation-Datasets` | `DOMAIN_KNOWLEDGE_AUTHORITY` |
| 3 | `Speedeerq/remote-automotive-diagnostics-platform` | `PLATFORM_CONSUMER_NORMALIZATION` |

Repositories remain independent. Cross-repository references must preserve provenance.

## Current milestone map

| Milestone | Area | Goal | Status |
|---|---|---|---|
| M0 | Repository foundation | Directory structure, safety rules, research method, status legend, test protocol | 🟢 DONE |
| M1 | MMI 3G High structure | Core MMI 3G High research files and navigation | 🟢 DONE |
| M2 | HNAV baseline/evidence intake | Baseline and evidence intake structures | 🟢 DONE |
| M3 | Offline dependency research | Module, CAR, Audio/MOST, source, risk and blocked-item matrices | 🟢 DONE |
| M4 | Light research shell | BCM/J519/MMI light menu research structure | 🟢 DONE |
| M5 | Compatibility matrix | HW/SW/market/equipment matrix | 🟢 DONE — historical inputs retained |
| M6 | Authority model | Formal three-level ownership and provenance contract | 🟢 IMPLEMENTED — PR #14 dependency |
| M7 | Finding reconciliation | Inventory, stable IDs, evidence refs, variant scope, status normalization | 🟢 IMPLEMENTED CANDIDATE — 11 findings |
| M8 | Remote gap reconciliation | Match exact domain findings to Remote Platform open gaps | 🟢 COMPLETED FAIL-CLOSED — no gap closed |
| M9 | Downstream reference manifest | Non-duplicating reference/provenance contract for Remote Platform | 🟢 IMPLEMENTED CANDIDATE |
| M10 | Reconciliation PR review | Validate stacked diff and authority boundaries | 🟠 CURRENT GATE |
| M11 | Downstream reference integration | Add domain authority reference support to Remote Platform without duplicating SoT | ⚫ BLOCKED BY M10 AND EXISTING REMOTE PR BLOCKERS |
| M12 | Controlled MMI3G expansion | Extend finding registry with additional evidence-backed semantics | ⚫ PENDING |
| M13 | MMI 3G Basic expansion | Extend verified domain model to Basic | ⚫ NOT STARTED |
| M14 | MMI 3G+ expansion | Extend beyond current build-specific findings | ⚫ PENDING / VARIANT-GATED |

## Phase A — Governance synchronization

Status: 🟢 IMPLEMENTED ON GOVERNANCE BRANCH

Workstream:

```text
AUDIMMI-MMI3G-KB-GOV-SYNC-001
```

Deliverables:

- [00_PROJECT/AUTHORITY_MODEL.md](00_PROJECT/AUTHORITY_MODEL.md)
- [00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md](00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md)
- [13_RELEASE/GOVERNANCE_SYNC_REPORT_2026-09-04.md](13_RELEASE/GOVERNANCE_SYNC_REPORT_2026-09-04.md)

Constraints retained:

```text
AUTO_PROMOTE_HISTORICAL_STATUS=false
AUTO_CLOSE_REMOTE_GAPS=false
MERGE_REPOSITORIES=false
RAW_EVIDENCE_DUPLICATION=false
```

## Phase B — Item-level knowledge reconciliation

Status: 🟢 IMPLEMENTED CANDIDATE

Workstream:

```text
AUDIMMI-MMI3G-KB-RECONCILE-001
```

Outputs:

- `schemas/finding_registry.schema.json`
- `01_MMI_3G_HIGH/FINDINGS/FINDING_REGISTRY_V1.json`
- `01_MMI_3G_HIGH/FINDINGS/README.md`
- `13_RELEASE/RECONCILIATION_REPORT_2026-09-04.md`

Current inventory:

```text
TOTAL_FINDINGS=11
TARGET_HNAV_FINDINGS=6
HNPLUS_BUILD_SPECIFIC_FINDINGS=5
VEHICLE_SCOPED_REFERENCE_RECORDS=2
```

Stable finding namespaces:

```text
MMI3G-ID-<MODULE>-<NNNN>
MMI3G-OBS-<AREA>-<NNNN>
MMI3G-COD-<MODULE>-<NNNN>
MMI3G-ADP-<MODULE>-<NNNN>
MMI3G-SA-<MODULE>-<NNNN>
MMI3G-DSET-<NNNN>
MMI3G-VAR-<SCOPE>-<NNNN>
MMI3G-COMPAT-<NNNN>
MMI3G-DEP-<SCOPE>-<NNNN>
```

Observation status and interpretation status remain separate where required.

## Phase C — Remote Platform gap reconciliation

Status: 🟢 COMPLETED FAIL-CLOSED

| Gap | Match | Result |
|---|---|---|
| Variant `9307` filesystem identity mapping | `PARTIAL_SUPPORT_ONLY` | `REMAINS_BLOCKED` |
| 5F `E1 -> E3` functional bit semantics | `NO_DIRECT_MATCH` | `REMAINS_TO_VERIFY` |
| J285 channel `73`, value `1` exact language mapping | `NO_DIRECT_MATCH` | `REMAINS_TO_VERIFY` |
| 0BK adaptation/fill health thresholds | `OUT_OF_DOMAIN_NO_MATCH` | `REMAINS_TO_VERIFY` |
| Airbag B1024 physical root cause | `OUT_OF_SCOPE` | `REMAINS_DEFERRED` |

Closure rule remains unchanged: a gap may close only when a specific finding directly proves the exact claim and the variant scope matches.

## Phase D — Downstream reference manifest

Status: 🟢 IMPLEMENTED CANDIDATE

Deliverable:

- [00_PROJECT/REMOTE_PLATFORM_REFERENCE_MANIFEST_2026-09-04.json](00_PROJECT/REMOTE_PLATFORM_REFERENCE_MANIFEST_2026-09-04.json)

Minimum downstream provenance contract:

```text
source_repository
source_commit_sha
stable_finding_id
source_authority_role
variant_scope
claim_status
supporting_evidence_refs
consumed_at
```

Mode:

```text
REFERENCE_ONLY_FAIL_CLOSED
RAW_EVIDENCE_COPIED=false
AUTOMATIC_PROMOTION_ALLOWED=false
AUTOMATIC_GAP_CLOSURE_ALLOWED=false
```

## Phase E — Review and downstream integration

Status: 🟠 REVIEW REQUIRED

Required sequence:

1. review stacked reconciliation PR against governance branch;
2. verify JSON/schema/provenance consistency;
3. verify no raw vehicle-evidence duplication;
4. verify no scope escalation or gap auto-closure;
5. only after review PASS, consider downstream Remote Platform reference integration;
6. keep existing Remote Platform PR #1 merge blockers independent and unresolved until separately corrected.

No downstream integration may silently copy this repository into Remote Platform as a second source of truth.

## Phase F — Controlled technical expansion

After reconciliation review, technical expansion may continue for:

- long coding semantics,
- adaptation channels,
- Security Access context,
- dataset semantics,
- Green/Red Menu behavior,
- audio/MOST dependencies,
- CAR menu dependencies,
- compatibility matrices,
- MMI 3G Basic,
- additional MMI 3G+ variants.

Expansion remains evidence-first and variant-aware.

## Release policy

A domain-knowledge release may be tagged only when:

| Requirement | Required |
|---|---|
| No unmarked claims | Yes |
| Every promoted finding has recoverable provenance | Yes |
| Variant scope explicit where relevant | Yes |
| Observation and interpretation statuses separated when needed | Yes |
| Risky findings retain rollback/safety context | Yes |
| No unsupported binary data | Yes |
| No private VINs or personal data | Yes |
| Changelog updated | Yes |
| Authority boundary preserved | Yes |

## Open governance decisions

| ID | Decision | Status |
|---|---|---|
| DEC-001 | Final public license | ⚫ OPEN |
| DEC-002 | Evidence file naming convention for screenshots/videos | 🟠 PROPOSED |
| DEC-003 | Raw Auto-Scan publication policy | 🟠 PROPOSED — default remains reference, not duplication |
| DEC-004 | CSV mirror for canonical findings | 🟠 PROPOSED |
| DEC-005 | Finding registry schema | 🟡 CANDIDATE V1 CREATED |
| DEC-006 | Remote Platform reference adapter/import contract | ⚫ BLOCKED BY RECONCILIATION REVIEW AND REMOTE PR STATE |

## Safety state

```text
DATABASE_MODIFIED=false
SECRETS_MODIFIED=false
DEPLOYMENT_PERFORMED=false
VEHICLE_STATE_MODIFIED=false
REMOTE_REPOSITORY_MODIFIED=false
REPOSITORIES_MERGED=false
```
