# CHANGELOG

All notable changes to this project will be documented in this file.

This project uses evidence-based technical documentation. Repository authority and individual finding status are separate concepts: a repository may be an authoritative domain source while specific historical records still require item-level reconciliation.

## [0.4.0] - 2026-09-04

### Governance

- Established `Speedeerq/Audi-MMI-3G-Coding-Adaptation-Datasets` as `DOMAIN_KNOWLEDGE_AUTHORITY` for Audi MMI 3G technical knowledge.
- Established the three-level AudiMMI authority model:
  - `Speedeerq/audi-a4-b8-master-workshop-manual` → `VEHICLE_EVIDENCE_AUTHORITY`
  - `Speedeerq/Audi-MMI-3G-Coding-Adaptation-Datasets` → `DOMAIN_KNOWLEDGE_AUTHORITY`
  - `Speedeerq/remote-automotive-diagnostics-platform` → `PLATFORM_CONSUMER_NORMALIZATION`
- Added cross-repository provenance requirements and stable finding-ID policy.
- Corrected stale repository-level `waiting for evidence` / offline-shell framing.

### Added

- `00_PROJECT/AUTHORITY_MODEL.md`
- `00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md`
- `13_RELEASE/GOVERNANCE_SYNC_REPORT_2026-09-04.md`

### Updated

- `README.md`
- `00_PROJECT/PROJECT_BRIEF.md`
- `01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md`
- `13_RELEASE/FINAL_PROGRESS_REPORT.md`
- `ROADMAP.md`

### Safety / scope

- No bulk `TO VERIFY -> CONFIRMED` promotion.
- No new byte/bit meanings.
- No new adaptation values.
- No new Security Access values.
- No new binary datasets.
- No Remote Platform gap auto-closure.
- No raw vehicle-evidence duplication.
- No repository merge.
- No database, secrets, deployment or vehicle-state mutation.

### Next

- Start `AUDIMMI-MMI3G-KB-RECONCILE-001` for finding inventory, stable IDs, evidence/provenance mapping, variant-scope normalization and item-level status reconciliation.

## [0.3.8] - 2026-07-10

### Added

- Added evidence intake workflow documentation and navigation:
  - `schemas/`
  - `templates/evidence_intake/`
  - `validation/evidence_intake/`
  - `docs/evidence_intake_execution/`
  - `docs/evidence_intake/README.md`
- Linked the evidence intake workflow from the root README navigation:
  - `README.md`

### Safety

- Evidence intake workflow documents are review-first controls and operator guidance only.
- No evidence record was accepted by this changelog entry.
- No technical claim was promoted.
- No confirmed byte/bit/adaptation/Security Access/dataset values were added.
- Local command results, template existence, parser success and checklist completion remain insufficient to confirm technical behavior.

### Not Added

- No byte/bit meanings.
- No adaptation values.
- No Security Access values.
- No binary datasets.
- No coding instructions.
- No retrofit instructions.
- No confirmed vehicle behavior.

## [0.3.7] - 2026-07-09

### Added

- Added evidence intake checklist:
  - `13_RELEASE/EVIDENCE_PACK_CHECKLIST.md`

### Updated

- Linked evidence checklist from:
  - `NAVIGATION.md`
  - `13_RELEASE/FINAL_PROGRESS_REPORT.md`

### Safety

- Evidence checklist is intake-only.
- No technical findings were promoted.
- No confirmed byte/bit/adaptation/Security Access/dataset values were added.
- Long Coding, Adaptation, Security Access, Dataset, Gateway, Audio/MOST and Light dependency confirmations remain blocked until evidence exists.

### Not Added

- No byte/bit meanings.
- No adaptation values.
- No Security Access values.
- No binary datasets.
- No coding instructions.
- No retrofit instructions.
- No confirmed vehicle behavior.

## [0.3.6] - 2026-07-09

### Added

- Added global repository navigation map:
  - `NAVIGATION.md`

### Updated

- Added cross-links to:
  - `README.md`
  - `ROADMAP.md`
  - `01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md`
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/README.md`
  - `13_RELEASE/FINAL_PROGRESS_REPORT.md`

### Safety

- Cross-links improve repository navigation only.
- No technical findings were promoted.
- No confirmed byte/bit/adaptation/Security Access/dataset values were added.

### Not Added

- No byte/bit meanings.
- No adaptation values.
- No Security Access values.
- No binary datasets.
- No coding instructions.
- No retrofit instructions.
- No confirmed vehicle behavior.

## [0.3.5] - 2026-07-09

### Added

- Added and/or completed full offline package for MMI 3G High:
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/MODULE_DEPENDENCY_MATRIX.md`
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/CAR_MENU_DEPENDENCY_MATRIX.md`
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/AUDIO_MOST_DEPENDENCY_MATRIX.md`
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/SOURCE_REVIEW_QUEUE.md`
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/TEST_CASE_LIBRARY.md`
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/BLOCKED_ITEMS_REGISTER.md`
  - `01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md`
  - `12_COMPATIBILITY/MMI_3G_HIGH_COMPATIBILITY_MATRIX.md`
  - `13_RELEASE/FINAL_PROGRESS_REPORT.md`
- Added light research shell files:
  - `11_LIGHT_CODING/LIGHT_CODING_RESEARCH_OVERVIEW.md`
  - `11_LIGHT_CODING/BCM1_J519_LIGHT_DEPENDENCY_MATRIX.md`
  - `11_LIGHT_CODING/MMI_CAR_LIGHT_MENU_DEPENDENCY.md`
  - `11_LIGHT_CODING/LIGHT_CODING_TEST_PROTOCOL.md`

### Updated

- Updated `01_MMI_3G_HIGH/OFFLINE_RESEARCH/README.md` with new offline files.
- Updated `ROADMAP.md` with:
  - completed offline research stages,
  - waiting-for-evidence section,
  - blocked Security Access/dataset/behavior-confirmation gates.

### Safety

- Offline matrices are planning documents only.
- Module, CAR, Audio/MOST, Light and Compatibility dependencies remain `🟠 TO VERIFY`, `🔴 HYPOTHESIS` or `⚫ UNKNOWN` until evidence exists.
- Release-gate and blocked-item structures prevent unsupported technical claims.

### Not Added

- No byte/bit meanings.
- No adaptation values.
- No Security Access values.
- No binary datasets.
- No coding instructions.
- No retrofit instructions.
- No confirmed vehicle behavior.

## [0.3.4] - 2026-07-09

### Added

- Added MMI 3G High offline research layer.

### Safety

- Offline research layer cannot confirm technical behavior.
- Hypotheses, backlog items and external-source notes must remain `⚫ UNKNOWN`, `🔴 HYPOTHESIS` or `🟠 TO VERIFY` until evidence exists.

## [0.3.3] - 2026-07-09

### Added

- Added dedicated Red Menu fallback capture package.

### Safety

- Red Menu workflow is read-only.
- SWDL/update/dataset/parameterization/security/coding/adaptation actions remain blocked.

## [0.3.2] - 2026-07-08

### Added

- Added no-Auto-Scan fallback workflow for HNAV baseline.
- Added fallback evidence templates.

### Safety

- Fallback evidence cannot replace full Auto-Scan.
- Fallback evidence cannot confirm byte/bit/adaptation/Security Access/dataset behavior.

## [0.3.1] - 2026-07-08

### Added

- Added HNAV Auto-Scan evidence intake template set.

### Safety

- Templates are evidence intake only.
- No byte/bit meanings added.

## [0.3.0] - 2026-07-08

### Added

- Added first MMI 3G High HNAV baseline package.

### Safety

- No byte/bit meanings added.
- No adaptation values added.
- No Security Access login values added.
- No binary datasets added.

## [0.2.0] - 2026-07-08

### Added

- Started the MMI 3G High research area after the command `ROZPOCZNIJ MMI 3G HIGH`.
- Added MMI 3G High research shell files.

### Safety

- Added templates without confirmed byte/bit/login/dataset values.

## [0.1.0] - 2026-07-08

### Added

- Created initial repository architecture.
- Added top-level documentation and project governance files.
- Added placeholder directories for future research areas.

### Safety

- Established mandatory backup-before-change policy.
- Established evidence status model.
- Established rule: no byte, bit, adaptation channel, Security Access login or dataset value may be presented as confirmed without evidence.

## [Unreleased]

### Planned

- Execute `AUDIMMI-MMI3G-KB-RECONCILE-001`.
- Reconcile historical per-record statuses against actual evidence/provenance.
- Assign stable finding IDs and variant scope.
- Identify direct evidence-backed matches to open Remote Platform gaps without duplicating raw vehicle evidence.
