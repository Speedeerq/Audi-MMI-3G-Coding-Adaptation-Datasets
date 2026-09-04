# MMI 3G High — Structure Index

## Navigation

| Area | Link |
|---|---|
| Repository navigation | [../NAVIGATION.md](../NAVIGATION.md) |
| Root README | [../README.md](../README.md) |
| Authority model | [../00_PROJECT/AUTHORITY_MODEL.md](../00_PROJECT/AUTHORITY_MODEL.md) |
| Governance sync | [../00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md](../00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md) |
| Roadmap | [../ROADMAP.md](../ROADMAP.md) |
| Changelog | [../CHANGELOG.md](../CHANGELOG.md) |
| Offline research layer | [OFFLINE_RESEARCH/README.md](OFFLINE_RESEARCH/README.md) |
| Final progress report | [../13_RELEASE/FINAL_PROGRESS_REPORT.md](../13_RELEASE/FINAL_PROGRESS_REPORT.md) |

## Purpose

This index maps the current MMI 3G High research structure, evidence state and blocked areas.

Repository governance was synchronized on 2026-09-04: this repository is the AudiMMI `DOMAIN_KNOWLEDGE_AUTHORITY`, and technical data already published here are accepted by project-owner decision as verified project data. Historical per-file labels such as `TO VERIFY`, `UNKNOWN` or `Pending` are not automatically promoted; they require item-level reconciliation against evidence/provenance and variant scope.

Therefore this index must be read as a mixed governance state: repository authority is established, while some historical record statuses remain intentionally unreconciled.

## Core research files

| Area | File | Historical status | Evidence/reconciliation requirement | Risk | Next action |
|---|---|---|---|---|---|
| Overview | [MMI_3G_HIGH_OVERVIEW.md](MMI_3G_HIGH_OVERVIEW.md) | 🟠 TO VERIFY | reconcile against current verified baseline/provenance | MEDIUM | item-level reconciliation |
| Long Coding | [MMI_3G_HIGH_LONG_CODING.md](MMI_3G_HIGH_LONG_CODING.md) | ⚫ UNKNOWN / mixed | reconcile published findings individually | HIGH | assign finding IDs and evidence refs |
| Adaptations | [MMI_3G_HIGH_ADAPTATIONS.md](MMI_3G_HIGH_ADAPTATIONS.md) | ⚫ UNKNOWN / mixed | reconcile published findings individually | HIGH | assign finding IDs and evidence refs |
| Security Access | [MMI_3G_HIGH_SECURITY_ACCESS.md](MMI_3G_HIGH_SECURITY_ACCESS.md) | ⚫ UNKNOWN / mixed | operation-specific evidence required | HIGH/CRITICAL | keep unproven values blocked |
| Datasets | [MMI_3G_HIGH_DATASETS.md](MMI_3G_HIGH_DATASETS.md) | ⚫ UNKNOWN / mixed | source/checksum/variant provenance | CRITICAL | reconcile metadata only unless binary source is controlled |
| Green Menu | [MMI_3G_HIGH_GREEN_MENU.md](MMI_3G_HIGH_GREEN_MENU.md) | ⚫ UNKNOWN / mixed | reconcile read-only observations | HIGH | item-level reconciliation |
| Red Menu | [MMI_3G_HIGH_RED_MENU.md](MMI_3G_HIGH_RED_MENU.md) | 🟠 TO VERIFY / mixed | reconcile identity evidence | MEDIUM/HIGH | item-level reconciliation |
| Audio Sources | [MMI_3G_HIGH_AUDIO_SOURCES.md](MMI_3G_HIGH_AUDIO_SOURCES.md) | 🟠 TO VERIFY / mixed | preserve MOST/audio variant scope | HIGH | item-level reconciliation |
| CAR Menu | [MMI_3G_HIGH_CAR_MENU.md](MMI_3G_HIGH_CAR_MENU.md) | 🟠 TO VERIFY / mixed | preserve module/equipment scope | HIGH | item-level reconciliation |
| Test Matrix | [MMI_3G_HIGH_TEST_MATRIX.md](MMI_3G_HIGH_TEST_MATRIX.md) | 🟠 TO VERIFY / mixed | map tests to stable findings | HIGH | normalize evidence links |

## Baseline files

| Area | File | Historical status | Reconciliation requirement | Risk | Next action |
|---|---|---|---|---|---|
| HNAV baseline index | [BASELINES/HNAV_8T1035664F_K0257_D1/README.md](BASELINES/HNAV_8T1035664F_K0257_D1/README.md) | 🟠 TO VERIFY | reconcile against current evidence authority | MEDIUM | normalize provenance |
| Unit profile | [BASELINES/HNAV_8T1035664F_K0257_D1/UNIT_PROFILE.md](BASELINES/HNAV_8T1035664F_K0257_D1/UNIT_PROFILE.md) | 🟠 TO VERIFY | historical status drift; reconcile fields individually | MEDIUM | link evidence/commit refs |
| Evidence index | [BASELINES/HNAV_8T1035664F_K0257_D1/EVIDENCE_INDEX.md](BASELINES/HNAV_8T1035664F_K0257_D1/EVIDENCE_INDEX.md) | 🟠 TO VERIFY | normalize source references | MEDIUM | provenance pass |
| Coding backup | [BASELINES/HNAV_8T1035664F_K0257_D1/CODING_BACKUP.md](BASELINES/HNAV_8T1035664F_K0257_D1/CODING_BACKUP.md) | 🟠 TO CAPTURE / historical | reconcile current canonical source | HIGH | provenance pass |
| Adaptation map | [BASELINES/HNAV_8T1035664F_K0257_D1/ADAPTATION_MAP.md](BASELINES/HNAV_8T1035664F_K0257_D1/ADAPTATION_MAP.md) | 🟠 TO CAPTURE / historical | reconcile current canonical source | HIGH | provenance pass |
| DTC baseline | [BASELINES/HNAV_8T1035664F_K0257_D1/DTC_BASELINE.md](BASELINES/HNAV_8T1035664F_K0257_D1/DTC_BASELINE.md) | 🟠 TO CAPTURE / historical | reconcile current canonical source | HIGH | provenance pass |
| Test plan | [BASELINES/HNAV_8T1035664F_K0257_D1/TEST_PLAN.md](BASELINES/HNAV_8T1035664F_K0257_D1/TEST_PLAN.md) | 🟠 TO VERIFY | preserve as plan/history; do not treat as evidence itself | HIGH | link completed tests where available |
| No Auto-Scan fallback | [BASELINES/HNAV_8T1035664F_K0257_D1/NO_AUTOSCAN_FALLBACK.md](BASELINES/HNAV_8T1035664F_K0257_D1/NO_AUTOSCAN_FALLBACK.md) | 🟠 TO VERIFY | retain as fallback method | MEDIUM | no automatic promotion |

## Offline research files

| Area | File | Status | Evidence required | Risk | Next action |
|---|---|---|---|---|---|
| Offline index | [OFFLINE_RESEARCH/README.md](OFFLINE_RESEARCH/README.md) | 🟠 TO VERIFY | none for structure | LOW | maintain index |
| Backlog | [OFFLINE_RESEARCH/RESEARCH_BACKLOG.md](OFFLINE_RESEARCH/RESEARCH_BACKLOG.md) | 🟠 TO VERIFY | evidence to close items | MEDIUM | reconcile against current knowledge |
| Hypotheses | [OFFLINE_RESEARCH/HYPOTHESIS_REGISTER.md](OFFLINE_RESEARCH/HYPOTHESIS_REGISTER.md) | 🔴 HYPOTHESIS | proof per item | MEDIUM/HIGH | keep separate from facts |
| Evidence queue | [OFFLINE_RESEARCH/EVIDENCE_QUEUE.md](OFFLINE_RESEARCH/EVIDENCE_QUEUE.md) | 🟠 TO VERIFY | actual files/photos/logs | MEDIUM | reconcile consumed evidence |
| Module dependencies | [OFFLINE_RESEARCH/MODULE_DEPENDENCY_MATRIX.md](OFFLINE_RESEARCH/MODULE_DEPENDENCY_MATRIX.md) | 🟠 TO VERIFY | scan/UI/module context | HIGH | promote only scoped verified relations |
| CAR menu dependencies | [OFFLINE_RESEARCH/CAR_MENU_DEPENDENCY_MATRIX.md](OFFLINE_RESEARCH/CAR_MENU_DEPENDENCY_MATRIX.md) | 🟠 TO VERIFY | UI + module context | HIGH | promote only scoped verified relations |
| Audio/MOST dependencies | [OFFLINE_RESEARCH/AUDIO_MOST_DEPENDENCY_MATRIX.md](OFFLINE_RESEARCH/AUDIO_MOST_DEPENDENCY_MATRIX.md) | 🟠 TO VERIFY | UI + audio/MOST context | HIGH | promote only scoped verified relations |
| Source review | [OFFLINE_RESEARCH/SOURCE_REVIEW_PROTOCOL.md](OFFLINE_RESEARCH/SOURCE_REVIEW_PROTOCOL.md) | 🟠 TO VERIFY | source context | MEDIUM/HIGH | retain as intake policy |
| Source queue | [OFFLINE_RESEARCH/SOURCE_REVIEW_QUEUE.md](OFFLINE_RESEARCH/SOURCE_REVIEW_QUEUE.md) | ⚫ UNKNOWN | sources to review | MEDIUM/HIGH | reconcile reviewed sources |
| Risk register | [OFFLINE_RESEARCH/RISK_REGISTER.md](OFFLINE_RESEARCH/RISK_REGISTER.md) | 🟠 TO VERIFY | evidence per risk | HIGH | maintain release blockers |
| Release gate | [OFFLINE_RESEARCH/RELEASE_GATE.md](OFFLINE_RESEARCH/RELEASE_GATE.md) | 🟠 TO VERIFY | evidence completeness | HIGH | use before public operational guidance |
| Evidence case library | [OFFLINE_RESEARCH/TEST_CASE_LIBRARY.md](OFFLINE_RESEARCH/TEST_CASE_LIBRARY.md) | 🟠 TO VERIFY | evidence per case | HIGH | use as review templates |
| Blocked items | [OFFLINE_RESEARCH/BLOCKED_ITEMS_REGISTER.md](OFFLINE_RESEARCH/BLOCKED_ITEMS_REGISTER.md) | 🟠 TO VERIFY | evidence to unblock | HIGH | reconcile against current verified findings |

## Related areas

| Area | File/folder | Status | Evidence required | Risk | Next action |
|---|---|---|---|---|---|
| Light research | [../11_LIGHT_CODING/LIGHT_CODING_RESEARCH_OVERVIEW.md](../11_LIGHT_CODING/LIGHT_CODING_RESEARCH_OVERVIEW.md) | 🟠 TO VERIFY | BCM/Gateway/MMI evidence | HIGH | scoped reconciliation only |
| Compatibility | [../12_COMPATIBILITY/MMI_3G_HIGH_COMPATIBILITY_MATRIX.md](../12_COMPATIBILITY/MMI_3G_HIGH_COMPATIBILITY_MATRIX.md) | 🟠 TO VERIFY | variant evidence | MEDIUM/HIGH | reconcile evidence-backed baselines |
| Final report | [../13_RELEASE/FINAL_PROGRESS_REPORT.md](../13_RELEASE/FINAL_PROGRESS_REPORT.md) | governance sync pending in historical report | repository state | LOW | supersede stale offline-only framing |

## Evidence authority boundary

Vehicle/session evidence remains canonical in:

```text
Speedeerq/audi-a4-b8-master-workshop-manual
ROLE=VEHICLE_EVIDENCE_AUTHORITY
```

This repository owns the domain interpretation layer. Downstream Remote Platform consumption must preserve repository/commit/finding provenance.

## Protected open questions

The following are not closed by the repository-level authority decision alone:

- Variant `9307` filesystem identity mapping,
- 5F `E1 -> E3` functional bit semantics,
- J285 channel `73`, value `1` exact language mapping,
- 0BK adaptation/fill health thresholds.

A direct scoped domain finding is required before downstream closure.

## Current decision

The MMI 3G High repository is an active domain knowledge authority.

Next workstream:

```text
AUDIMMI-MMI3G-KB-RECONCILE-001
```

It will reconcile historical item-level statuses, assign stable finding IDs, map provenance and identify exact matches to Remote Platform gaps without duplicating raw vehicle evidence.
