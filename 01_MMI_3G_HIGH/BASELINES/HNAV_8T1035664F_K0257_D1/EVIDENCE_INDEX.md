# Evidence Index — HNAV 8T1 035 664 F / K0257 D1

## Purpose

This file tracks evidence required to use the HNAV baseline in research.

A baseline is not confirmed until required evidence is attached and cross-referenced.

## Evidence status legend

| Status | Meaning |
|---|---|
| 🟢 CAPTURED | Evidence exists in repository or linked source |
| 🟡 PARTIAL | Evidence exists but is incomplete or not sanitized |
| 🟠 TO CAPTURE | Evidence is required but missing |
| 🔴 INVALID | Evidence exists but cannot be used |
| ⚫ UNKNOWN | Not assessed |

## Required evidence checklist

| Evidence ID | Evidence item | Required | Current status | Target path / notes |
|---|---|---:|---|---|
| HNAV-EV-001 | Full Auto-Scan before any changes | Yes | 🟠 TO CAPTURE | `09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/AUTOSCAN_HNAV_TEMPLATE.md` |
| HNAV-EV-002 | Controller identification block | Yes | 🟠 TO CAPTURE | `09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/controller_identification.template.md` |
| HNAV-EV-003 | Red Engineering Menu identification | Yes | 🟠 TO CAPTURE | `09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/red_menu_identification.template.md` |
| HNAV-EV-004 | Original long coding | Yes | 🟠 TO CAPTURE | `CODING_BACKUP.md` / raw export |
| HNAV-EV-005 | Adaptation map/export | Recommended | 🟠 TO CAPTURE | `ADAPTATION_MAP.md` / CSV export |
| HNAV-EV-006 | DTC before changes | Yes | 🟠 TO CAPTURE | `09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/dtc_before.template.md` |
| HNAV-EV-007 | Gateway installation list | Recommended | 🟠 TO CAPTURE | `09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/gateway_installation_list.template.md` |
| HNAV-EV-008 | MOST/audio status | Recommended | 🟠 TO CAPTURE | `09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/most_audio_status.template.md` |
| HNAV-EV-009 | Green Menu current state | Optional initially | 🟠 TO CAPTURE | `ui_observation_log.template.md` or dedicated media notes |
| HNAV-EV-010 | Dataset/parameterization backup | Required before dataset research | 🟠 TO CAPTURE | Do not test dataset without backup |

## No Auto-Scan fallback set

Use this only when full Auto-Scan is unavailable.

| Template | Purpose | Maximum evidence status |
|---|---|---|
| `NO_AUTOSCAN_FALLBACK.md` | Defines allowed and blocked work without Auto-Scan | N/A |
| `red_menu_identification.template.md` | Capture Red Engineering Menu read-only identification | 🟠 TO VERIFY |
| `mmi_version_screen.template.md` | Capture user-visible MMI version screen | 🟠 TO VERIFY |
| `manual_controller_capture.template.md` | Capture single-controller metadata from screenshot/tool screen | 🟡 VARIANT if complete |
| `ui_observation_log.template.md` | Capture CAR/audio/nav/menu UI observations without changes | 🟠 TO VERIFY |

## Auto-Scan template set

| Template | Purpose | Status |
|---|---|---|
| `AUTOSCAN_HNAV_TEMPLATE.md` | Main sanitized Auto-Scan paste area and extraction checklist | 🟠 TO CAPTURE |
| `controller_identification.template.md` | Extract controller identity, part number, HW/SW, coding metadata | 🟠 TO CAPTURE |
| `dtc_before.template.md` | Extract pre-existing DTC state before any change | 🟠 TO CAPTURE |
| `gateway_installation_list.template.md` | Extract installed/reachable modules and Gateway context | 🟠 TO CAPTURE |
| `most_audio_status.template.md` | Extract MOST/audio/amplifier/source baseline | 🟠 TO CAPTURE |

## Evidence file naming convention

Recommended structure:

```text
09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/
├── AUTOSCAN_HNAV_TEMPLATE.md
├── controller_identification.template.md
├── dtc_before.template.md
├── gateway_installation_list.template.md
├── most_audio_status.template.md
├── red_menu_identification.template.md
├── mmi_version_screen.template.md
├── manual_controller_capture.template.md
├── ui_observation_log.template.md
├── autoscan_before.txt
├── controller_identification.txt
├── red_menu_identification.md
├── coding_before.txt
├── adaptation_map_before.csv
├── dtc_before.txt
├── gateway_installation_list.txt
├── most_audio_status.txt
└── media/
    ├── red_menu_001.jpg
    ├── mmi_version_001.jpg
    ├── unit_label_001.jpg
    ├── coding_before_001.jpg
    ├── green_menu_001.jpg
    └── car_menu_001.jpg
```

## Privacy/sanitization requirements

Before publishing evidence:

| Data | Action |
|---|---|
| Full VIN | Redact to partial VIN |
| License plate | Remove or blur |
| Owner/customer data | Remove |
| Location data | Remove |
| Personal device paths/usernames | Remove |
| Full scan notes with personal data | Sanitize |

## Evidence acceptance rules

| Evidence type | Accepted when |
|---|---|
| Auto-Scan | Includes controller, part number, SW version, DTC state |
| Screenshot/photo | Shows enough context and date/test relation |
| Coding export | Contains original value and controller metadata |
| Adaptation map | Contains channel/value data and controller metadata |
| DTC log | Shows before/after state and controller context |
| Video | Linked to specific test ID and behavior |

## Current baseline usability

| Use case | Allowed now? | Reason |
|---|---:|---|
| Repository structure reference | Yes | Folder and templates exist |
| No-Auto-Scan fallback evidence intake | Yes | Fallback templates now exist |
| Auto-Scan evidence intake | Yes | Templates exist for when scan becomes available |
| Read-only Red Menu/MMI version capture | Yes | Allowed as provisional evidence |
| UI menu observation without changes | Yes | Allowed as provisional evidence |
| Confirm byte/bit behavior | No | No coding evidence + no DTC before/after |
| Confirm adaptation behavior | No | No adaptation map + no rollback |
| Confirm Security Access | No | No tested operation and no baseline |
| Dataset research | No | No backup/source/recovery path |
| Compatibility hypothesis | Limited | Unit context exists but requires evidence |
