# CHANGELOG

All notable changes to this project will be documented in this file.

This project uses evidence-based technical documentation. A version may contain research structure without confirmed technical findings.

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
