# CHANGELOG

All notable changes to this project will be documented in this file.

This project uses evidence-based technical documentation. A version may contain research structure without confirmed technical findings.

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

- Added first MMI 3G High HNAV baseline package:
  - `01_MMI_3G_HIGH/BASELINES/HNAV_8T1035664F_K0257_D1/README.md`
  - `01_MMI_3G_HIGH/BASELINES/HNAV_8T1035664F_K0257_D1/UNIT_PROFILE.md`
  - `01_MMI_3G_HIGH/BASELINES/HNAV_8T1035664F_K0257_D1/EVIDENCE_INDEX.md`
  - `01_MMI_3G_HIGH/BASELINES/HNAV_8T1035664F_K0257_D1/CODING_BACKUP.md`
  - `01_MMI_3G_HIGH/BASELINES/HNAV_8T1035664F_K0257_D1/ADAPTATION_MAP.md`
  - `01_MMI_3G_HIGH/BASELINES/HNAV_8T1035664F_K0257_D1/DTC_BASELINE.md`
  - `01_MMI_3G_HIGH/BASELINES/HNAV_8T1035664F_K0257_D1/TEST_PLAN.md`
- Added evidence folder placeholder:
  - `09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/`
- Added backup folder placeholder:
  - `10_BACKUPS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/`

### Baseline context

- Initial HNAV context recorded as `🟠 TO VERIFY` / `⚫ UNKNOWN` until scan evidence is attached:
  - `8T1 035 664 F`
  - `HNav_EU_K0257_5_D1` / `HNav_EU_K0257_6_D1`
  - `Variant 9307`
  - `RadioUnit 9471`
  - `MU 0187`
  - `Sample d1`

### Safety

- No byte/bit meanings added.
- No adaptation values added.
- No Security Access login values added.
- No binary datasets added.
- Baseline marked as incomplete until Auto-Scan, coding backup, adaptation map and DTC baseline are attached.

## [0.2.0] - 2026-07-08

### Added

- Started the MMI 3G High research area after the command:

```text
ROZPOCZNIJ MMI 3G HIGH
```

- Added MMI 3G High research shell files:
  - `01_MMI_3G_HIGH/MMI_3G_HIGH_OVERVIEW.md`
  - `01_MMI_3G_HIGH/MMI_3G_HIGH_LONG_CODING.md`
  - `01_MMI_3G_HIGH/MMI_3G_HIGH_ADAPTATIONS.md`
  - `01_MMI_3G_HIGH/MMI_3G_HIGH_SECURITY_ACCESS.md`
  - `01_MMI_3G_HIGH/MMI_3G_HIGH_DATASETS.md`
  - `01_MMI_3G_HIGH/MMI_3G_HIGH_GREEN_MENU.md`
  - `01_MMI_3G_HIGH/MMI_3G_HIGH_RED_MENU.md`
  - `01_MMI_3G_HIGH/MMI_3G_HIGH_AUDIO_SOURCES.md`
  - `01_MMI_3G_HIGH/MMI_3G_HIGH_CAR_MENU.md`
  - `01_MMI_3G_HIGH/MMI_3G_HIGH_TEST_MATRIX.md`

### Safety

- Added templates without confirmed byte/bit/login/dataset values.
- Preserved the rule that unknown items must remain `⚫ UNKNOWN` until evidence exists.
- Added explicit test templates for controlled validation and rollback.

### Not added

- No confirmed MMI 3G High byte/bit mappings.
- No adaptation values.
- No Security Access login values.
- No binary datasets.
- No retrofit coding instructions.

## [0.1.0] - 2026-07-08

### Added

- Created initial repository architecture.
- Added top-level documentation:
  - `README.md`
  - `ROADMAP.md`
  - `CHANGELOG.md`
- Added project governance files:
  - `00_PROJECT/PROJECT_BRIEF.md`
  - `00_PROJECT/RESEARCH_METHOD.md`
  - `00_PROJECT/STATUS_LEGEND.md`
  - `00_PROJECT/TEST_PROTOCOL.md`
  - `00_PROJECT/SAFETY_RULES.md`
- Added placeholder directories for:
  - MMI 3G High
  - MMI 3G Basic
  - MMI 3G+
  - related control modules
  - datasets
  - coding research
  - adaptation research
  - Security Access
  - test logs
  - backups
  - light coding
  - compatibility
  - release package

### Safety

- Established mandatory backup-before-change policy.
- Established evidence status model:
  - 🟢 CONFIRMED
  - 🟡 VARIANT
  - 🟠 TO VERIFY
  - 🔴 HYPOTHESIS
  - ⚫ UNKNOWN
- Established rule: no byte, bit, adaptation channel, Security Access login or dataset value may be presented as confirmed without evidence.

### Not added

- No MMI 3G High byte/bit mappings.
- No adaptation channel values.
- No Security Access login values.
- No binary datasets.
- No coding recommendations.
- No vehicle-specific retrofit instructions.

## [Unreleased]

### Planned

- Add first evidence-backed MMI 3G High baseline from Auto-Scan, coding backup and adaptation map.
