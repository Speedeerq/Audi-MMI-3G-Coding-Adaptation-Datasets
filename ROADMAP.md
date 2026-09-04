# ROADMAP

## Navigation

| Area | Link |
|---|---|
| Repository navigation | [NAVIGATION.md](NAVIGATION.md) |
| Root README | [README.md](README.md) |
| Authority model | [00_PROJECT/AUTHORITY_MODEL.md](00_PROJECT/AUTHORITY_MODEL.md) |
| Governance sync | [00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md](00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md) |
| Changelog | [CHANGELOG.md](CHANGELOG.md) |
| MMI 3G High index | [01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md](01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md) |
| Final progress report | [13_RELEASE/FINAL_PROGRESS_REPORT.md](13_RELEASE/FINAL_PROGRESS_REPORT.md) |

## Project state

Current state:

```text
v0.4.0 — DOMAIN_KNOWLEDGE_AUTHORITY established
Governance synchronized
Item-level reconciliation pending
```

The repository is authoritative for Audi MMI 3G domain knowledge within the scope and provenance of each finding. Historical `TO VERIFY`, `UNKNOWN`, `Pending`, `HYPOTHESIS` and `VARIANT` labels are not mass-promoted; they must be reconciled record-by-record.

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
| M5 | Compatibility matrix | HW/SW/market/equipment matrix | 🟢 DONE — historical statuses require reconciliation |
| M6 | Authority model | Formal three-level ownership and provenance contract | 🟢 DONE — PR #14 candidate |
| M7 | Finding reconciliation | Inventory, stable IDs, evidence refs, variant scope, status normalization | 🟠 NEXT |
| M8 | Remote gap reconciliation | Match exact domain findings to Remote Platform open gaps | ⚫ BLOCKED BY M7 |
| M9 | Downstream reference manifest | Non-duplicating import/reference manifest for Remote Platform | ⚫ BLOCKED BY M7/M8 |
| M10 | Public-safe release | Release notes reflecting reconciled current state | ⚫ PENDING |
| M11 | MMI 3G Basic expansion | Extend verified domain model to Basic | ⚫ NOT STARTED |
| M12 | MMI 3G+ expansion | Extend verified domain model to Plus | ⚫ NOT STARTED |

## Completed foundation and offline work

The July 2026 offline package remains historically valid as project infrastructure. It created:

- module dependency matrices,
- CAR menu dependency matrix,
- Audio/MOST dependency matrix,
- light research shell,
- compatibility matrix,
- source review protocol and queue,
- evidence test-case library,
- blocked-item register,
- evidence pack checklist,
- release-gate structure,
- HNAV baseline and evidence intake templates.

These artifacts are no longer evidence that the repository itself is merely "waiting for evidence". They are inputs to the current item-level reconciliation stage.

## Phase A — Governance synchronization

Status: 🟢 IMPLEMENTED ON FEATURE BRANCH

Workstream:

```text
AUDIMMI-MMI3G-KB-GOV-SYNC-001
```

Deliverables:

- [00_PROJECT/AUTHORITY_MODEL.md](00_PROJECT/AUTHORITY_MODEL.md)
- [00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md](00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md)
- [13_RELEASE/GOVERNANCE_SYNC_REPORT_2026-09-04.md](13_RELEASE/GOVERNANCE_SYNC_REPORT_2026-09-04.md)
- updated repository-level status documents

Constraints:

```text
AUTO_PROMOTE_HISTORICAL_STATUS=false
AUTO_CLOSE_REMOTE_GAPS=false
MERGE_REPOSITORIES=false
RAW_EVIDENCE_DUPLICATION=false
```

## Phase B — Item-level knowledge reconciliation

Status: 🟠 NEXT

Workstream:

```text
AUDIMMI-MMI3G-KB-RECONCILE-001
```

Required outputs:

1. inventory all technical findings currently published;
2. classify each finding by type: coding, adaptation, Security Access, dataset, variant, compatibility or dependency;
3. assign stable finding IDs;
4. attach source path and commit provenance;
5. link supporting evidence refs;
6. normalize HW/SW/market/equipment scope;
7. reconcile historical status fields;
8. retain unresolved and conflicting records explicitly;
9. produce a machine-readable finding catalog candidate.

Recommended finding IDs:

```text
MMI3G-COD-<MODULE>-<NNNN>
MMI3G-ADP-<MODULE>-<NNNN>
MMI3G-SA-<MODULE>-<NNNN>
MMI3G-DSET-<NNNN>
MMI3G-VAR-<NNNN>
MMI3G-COMPAT-<NNNN>
MMI3G-DEP-<NNNN>
```

## Phase C — Remote Platform gap reconciliation

Status: ⚫ BLOCKED BY PHASE B

Protected questions currently include:

| Gap | State before reconciliation |
|---|---|
| Variant `9307` filesystem identity mapping | BLOCKED / TO_VERIFY |
| 5F `E1 -> E3` functional bit semantics | TO_VERIFY |
| J285 channel `73`, value `1` exact language mapping | TO_VERIFY |
| 0BK adaptation/fill health thresholds | TO_VERIFY |
| Airbag B1024 physical root cause | DEFERRED / not auto-closed by MMI3G authority |

Closure rule:

A gap may be closed only when a specific finding directly supports the exact claim and its variant scope matches the target context.

## Phase D — Downstream reference manifest

Status: ⚫ BLOCKED BY PHASES B/C

The Remote Platform should consume domain findings by reference rather than by creating a second independent source of truth.

Minimum provenance contract:

```text
source_repository
source_commit_sha
source_path or stable_finding_id
source_authority_role
variant_scope
status
supporting_evidence_refs
consumed_at
```

## Phase E — Controlled technical expansion

After reconciliation, technical expansion may continue for:

- long coding,
- adaptation channels,
- Security Access context,
- dataset semantics,
- Green/Red Menu behavior,
- audio/MOST dependencies,
- CAR menu dependencies,
- compatibility matrices,
- MMI 3G Basic,
- MMI 3G+.

Expansion must remain evidence-first and variant-aware.

## Release policy

A domain-knowledge release may be tagged only when:

| Requirement | Required |
|---|---|
| No unmarked claims | Yes |
| Every promoted finding has recoverable provenance | Yes |
| Variant scope is explicit where relevant | Yes |
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
| DEC-003 | Whether raw Auto-Scans remain only in Vehicle Evidence Authority or sanitized extracts may be published here | 🟠 PROPOSED — default is reference, not duplication |
| DEC-004 | CSV/JSON mirror for reconciled finding catalog | 🟠 PROPOSED |
| DEC-005 | Exact machine-readable schema for stable MMI3G findings | 🟠 PROPOSED |

## Safety state

```text
DATABASE_MODIFIED=false
SECRETS_MODIFIED=false
DEPLOYMENT_PERFORMED=false
VEHICLE_STATE_MODIFIED=false
REPOSITORIES_MERGED=false
```
