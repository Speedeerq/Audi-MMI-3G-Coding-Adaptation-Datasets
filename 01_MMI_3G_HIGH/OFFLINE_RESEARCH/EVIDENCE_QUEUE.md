# MMI 3G High — Evidence Queue

## Purpose

This file tracks missing evidence needed before any MMI 3G High finding can be promoted.

## Evidence priority legend

| Priority | Meaning |
|---|---|
| E0 | Required before any vehicle-changing test |
| E1 | Required before confirming specific behavior |
| E2 | Useful for dependency mapping |
| E3 | Later expansion |

## Evidence queue

| Evidence ID | Priority | Area | Evidence needed | Target status enabled | Current status |
|---|---:|---|---|---|---|
| EVQ-HIGH-001 | E0 | Baseline | Full Auto-Scan | Baseline validation | 🟠 TO CAPTURE |
| EVQ-HIGH-002 | E0 | Baseline | Controller ID with part number, component, SW | Unit profile validation | 🟠 TO CAPTURE |
| EVQ-HIGH-003 | E0 | Baseline | Original coding backup | Safe rollback | 🟠 TO CAPTURE |
| EVQ-HIGH-004 | E0 | Baseline | DTC-before state | Fault attribution | 🟠 TO CAPTURE |
| EVQ-HIGH-005 | E1 | Red Menu | Red Menu photos/transcription | Provisional SW identity | 🟠 TO CAPTURE |
| EVQ-HIGH-006 | E1 | MMI version | User-visible version screen | Provisional version identity | 🟠 TO CAPTURE |
| EVQ-HIGH-007 | E1 | Adaptations | Adaptation map/export | Adaptation research | 🟠 TO CAPTURE |
| EVQ-HIGH-008 | E1 | Gateway | Gateway installation list | Module dependency mapping | 🟠 TO CAPTURE |
| EVQ-HIGH-009 | E1 | Audio/MOST | Sound system and MOST DTC context | Audio dependency mapping | 🟠 TO CAPTURE |
| EVQ-HIGH-010 | E1 | Green Menu | Read-only Green Menu path photos | Menu tree inventory | 🟠 TO CAPTURE |
| EVQ-HIGH-011 | E2 | CAR menu | Read-only CAR menu screenshots | UI dependency mapping | 🟠 TO CAPTURE |
| EVQ-HIGH-012 | E2 | Lighting | BCM/headlight range scan context | Light dependency mapping | 🟠 TO CAPTURE |
| EVQ-HIGH-013 | E3 | Dataset | Dataset source, checksum, backup | Dataset metadata research | ⚫ UNKNOWN |

## Evidence-to-file mapping

| Evidence needed | Target file |
|---|---|
| Full Auto-Scan | `09_TEST_LOGS/.../AUTOSCAN_HNAV_TEMPLATE.md` |
| Controller ID | `09_TEST_LOGS/.../controller_identification.template.md` |
| Red Menu photos | `09_TEST_LOGS/.../red_menu_photo_checklist.md` |
| Red Menu transcription | `09_TEST_LOGS/.../red_menu_transcription_worksheet.md` |
| DTC-before | `09_TEST_LOGS/.../dtc_before.template.md` |
| Gateway list | `09_TEST_LOGS/.../gateway_installation_list.template.md` |
| MOST/audio | `09_TEST_LOGS/.../most_audio_status.template.md` |
| Coding backup | `01_MMI_3G_HIGH/BASELINES/.../CODING_BACKUP.md` |
| Adaptation map | `01_MMI_3G_HIGH/BASELINES/.../ADAPTATION_MAP.md` |

## Evidence quality rules

| Evidence | Minimum usable quality |
|---|---|
| Photo | Text readable, source context clear, no personal data |
| Scan | Controller metadata, DTC state, coding if relevant |
| Coding backup | Original value, controller metadata, date/tool |
| Adaptation map | Original values, channel names/IDs, controller metadata |
| Video | Test ID or observation ID, clear behavior, no edits that hide sequence |
| External source | Source reviewed under `SOURCE_REVIEW_PROTOCOL.md` |

## Confirmation blockers

| Blocker | Effect |
|---|---|
| No DTC-before | Cannot attribute new faults to test |
| No original coding | Cannot safely rollback coding |
| No adaptation map | Cannot safely test adaptations |
| No Gateway list | Cannot confirm module dependencies |
| No MOST/audio baseline | Cannot safely test audio/MOST behavior |
| No dataset backup | Dataset/parameterization work blocked |
