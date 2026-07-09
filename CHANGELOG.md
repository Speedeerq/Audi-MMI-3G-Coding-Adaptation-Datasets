# CHANGELOG

All notable changes to this project will be documented in this file.

This project uses evidence-based technical documentation. A version may contain research structure without confirmed technical findings.

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

- Added MMI 3G High offline research layer:
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/README.md`
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/RESEARCH_BACKLOG.md`
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/HYPOTHESIS_REGISTER.md`
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/EVIDENCE_QUEUE.md`
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/SOURCE_REVIEW_PROTOCOL.md`
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/RISK_REGISTER.md`
  - `01_MMI_3G_HIGH/OFFLINE_RESEARCH/RELEASE_GATE.md`

### Safety

- Offline research layer cannot confirm technical behavior.
- Hypotheses, backlog items and external-source notes must remain `⚫ UNKNOWN`, `🔴 HYPOTHESIS` or `🟠 TO VERIFY` until evidence exists.
- Added release-gate rules to prevent unsupported byte/bit/adaptation/Security Access/dataset claims.

## [0.3.3] - 2026-07-09

### Added

- Added dedicated Red Menu fallback capture package under:
  - `09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/`
- Added Red Menu fallback files:
  - `RED_MENU_FALLBACK_CAPTURE_GUIDE.md`
  - `red_menu_photo_checklist.md`
  - `red_menu_transcription_worksheet.md`
  - `red_menu_evidence_status.md`
- Updated `EVIDENCE_INDEX.md` to link the Red Menu fallback package and media naming convention.

### Safety

- Red Menu workflow is read-only.
- SWDL/update/dataset/parameterization/security/coding/adaptation actions remain blocked.
- Red Menu fallback evidence can only support provisional identification until Auto-Scan or equivalent diagnostic evidence exists.

## [0.3.2] - 2026-07-08

### Added

- Added no-Auto-Scan fallback workflow for HNAV baseline:
  - `01_MMI_3G_HIGH/BASELINES/HNAV_8T1035664F_K0257_D1/NO_AUTOSCAN_FALLBACK.md`
- Added fallback evidence templates:
  - `09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/red_menu_identification.template.md`
  - `09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/mmi_version_screen.template.md`
  - `09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/manual_controller_capture.template.md`
  - `09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/ui_observation_log.template.md`
- Updated `EVIDENCE_INDEX.md` with the fallback evidence set.
- Updated `TEST_PLAN.md` with `Phase A0 — No Auto-Scan fallback capture`.

### Safety

- Fallback evidence cannot replace full Auto-Scan.
- Fallback evidence cannot confirm byte/bit/adaptation/Security Access/dataset behavior.
- Allowed work without Auto-Scan is limited to read-only identification, UI observation and provisional research notes.
- Coding/adaptation/dataset tests remain blocked until baseline scan, coding backup, DTC state and rollback path are captured.

## [0.3.1] - 2026-07-08

### Added

- Added HNAV Auto-Scan evidence intake template set under:
  - `09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/`
- Added templates:
  - `AUTOSCAN_HNAV_TEMPLATE.md`
  - `controller_identification.template.md`
  - `dtc_before.template.md`
  - `gateway_installation_list.template.md`
  - `most_audio_status.template.md`
- Updated HNAV baseline `EVIDENCE_INDEX.md` to link directly to the new Auto-Scan extraction templates.

### Safety

- Templates are evidence intake only.
- No byte/bit meanings added.
- No coding interpretation added.
- No adaptation values added.
- No Security Access login values added.
- Coding/adaptation tests remain blocked until baseline evidence and rollback data are captured.

## [0.3.0] - 2026-07-08

### Added

- Added first MMI 3G High HNAV baseline package.

### Safety

- No byte/bit meanings added.
- No adaptation values added.
- No Security Access login values added.
- No binary datasets added.
- Baseline marked as incomplete until Auto-Scan, coding backup, adaptation map and DTC baseline are attached.

## [0.2.0] - 2026-07-08

### Added

- Started the MMI 3G High research area after the command `ROZPOCZNIJ MMI 3G HIGH`.
- Added MMI 3G High research shell files.

### Safety

- Added templates without confirmed byte/bit/login/dataset values.
- Preserved the rule that unknown items must remain `⚫ UNKNOWN` until evidence exists.

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

- Add first evidence-backed MMI 3G High baseline from Auto-Scan, coding backup and adaptation map.
