# Evidence Pack Checklist — MMI 3G High / HNAV

## Purpose

This checklist defines the evidence package required before any MMI 3G High / HNAV finding can be promoted beyond `🟠 TO VERIFY`.

It is an evidence intake checklist only.  
It does not contain coding values, adaptation values, Security Access values, datasets or operational instructions.

## Navigation

| Area | Link |
|---|---|
| Repository navigation | [../NAVIGATION.md](../NAVIGATION.md) |
| Final progress report | [FINAL_PROGRESS_REPORT.md](FINAL_PROGRESS_REPORT.md) |
| MMI 3G High index | [../01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md](../01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md) |
| HNAV evidence index | [../01_MMI_3G_HIGH/BASELINES/HNAV_8T1035664F_K0257_D1/EVIDENCE_INDEX.md](../01_MMI_3G_HIGH/BASELINES/HNAV_8T1035664F_K0257_D1/EVIDENCE_INDEX.md) |
| No Auto-Scan fallback | [../01_MMI_3G_HIGH/BASELINES/HNAV_8T1035664F_K0257_D1/NO_AUTOSCAN_FALLBACK.md](../01_MMI_3G_HIGH/BASELINES/HNAV_8T1035664F_K0257_D1/NO_AUTOSCAN_FALLBACK.md) |
| Red Menu fallback guide | [../09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/RED_MENU_FALLBACK_CAPTURE_GUIDE.md](../09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/RED_MENU_FALLBACK_CAPTURE_GUIDE.md) |

## Evidence status legend

| Status | Meaning |
|---|---|
| 🟢 CAPTURED | Evidence file exists and is usable |
| 🟡 PARTIAL | Evidence exists but is incomplete |
| 🟠 TO CAPTURE | Evidence is required but missing |
| 🔴 BLOCKED | Work cannot continue until evidence exists |
| ⚫ UNKNOWN | Not assessed |

## Master evidence checklist

| Evidence ID | Evidence item | Required before | Target file / location | Current status | Risk if missing |
|---|---|---|---|---|---|
| EP-HNAV-001 | Full Auto-Scan | baseline verification, module context | `09_TEST_LOGS/.../AUTOSCAN_HNAV_TEMPLATE.md` | 🟠 TO CAPTURE | HIGH |
| EP-HNAV-002 | Controller identification | unit profile verification | `09_TEST_LOGS/.../controller_identification.template.md` | 🟠 TO CAPTURE | HIGH |
| EP-HNAV-003 | Red Menu photos/transcription | provisional SW/MU identity | `09_TEST_LOGS/.../red_menu_transcription_worksheet.md` | 🟠 TO CAPTURE | MEDIUM |
| EP-HNAV-004 | MMI version screen | provisional visible-version identity | `09_TEST_LOGS/.../mmi_version_screen.template.md` | 🟠 TO CAPTURE | MEDIUM |
| EP-HNAV-005 | Unit label photo if accessible | part number corroboration | `09_TEST_LOGS/.../media/unit_label_001.jpg` | 🟠 TO CAPTURE | MEDIUM |
| EP-HNAV-006 | Original long coding backup | future Long Coding review | `01_MMI_3G_HIGH/BASELINES/.../CODING_BACKUP.md` | 🟠 TO CAPTURE | HIGH |
| EP-HNAV-007 | Adaptation map/export | future adaptation review | `01_MMI_3G_HIGH/BASELINES/.../ADAPTATION_MAP.md` | 🟠 TO CAPTURE | HIGH |
| EP-HNAV-008 | DTC baseline before changes | fault attribution | `09_TEST_LOGS/.../dtc_before.template.md` | 🟠 TO CAPTURE | HIGH |
| EP-HNAV-009 | Gateway installation list | module dependency review | `09_TEST_LOGS/.../gateway_installation_list.template.md` | 🟠 TO CAPTURE | HIGH |
| EP-HNAV-010 | MOST/audio baseline | audio dependency review | `09_TEST_LOGS/.../most_audio_status.template.md` | 🟠 TO CAPTURE | HIGH |
| EP-HNAV-011 | CAR menu screenshots/video | CAR menu visibility review | `09_TEST_LOGS/.../ui_observation_log.template.md` | 🟠 TO CAPTURE | MEDIUM/HIGH |
| EP-HNAV-012 | Audio source screenshots/video | audio source visibility review | `09_TEST_LOGS/.../ui_observation_log.template.md` | 🟠 TO CAPTURE | MEDIUM/HIGH |
| EP-HNAV-013 | Green Menu read-only path photos | hidden menu tree review | `09_TEST_LOGS/.../ui_observation_log.template.md` | 🟠 TO CAPTURE | HIGH |
| EP-HNAV-014 | Camera/parking UI evidence if present | RVC/OPS dependency review | `09_TEST_LOGS/.../ui_observation_log.template.md` | 🟠 TO CAPTURE | HIGH |
| EP-HNAV-015 | Light menu UI evidence if present | MMI light menu dependency review | `09_TEST_LOGS/.../ui_observation_log.template.md` | 🟠 TO CAPTURE | HIGH |

## Minimum evidence packages

### Package A — Read-only identity fallback

Use when no diagnostic scan is available.

| Evidence | Required | Status |
|---|---:|---|
| Red Menu photos/transcription | Yes | 🟠 TO CAPTURE |
| MMI version screen | Yes | 🟠 TO CAPTURE |
| Unit label photo if accessible | Recommended | 🟠 TO CAPTURE |
| UI observation log | Recommended | 🟠 TO CAPTURE |
| Auto-Scan | Not available | 🟠 TO CAPTURE later |

Maximum allowed conclusion: `🟠 TO VERIFY`.

### Package B — Baseline diagnostic package

Use when diagnostic access is available.

| Evidence | Required | Status |
|---|---:|---|
| Full Auto-Scan | Yes | 🟠 TO CAPTURE |
| Controller identification | Yes | 🟠 TO CAPTURE |
| DTC baseline | Yes | 🟠 TO CAPTURE |
| Gateway installation list | Recommended | 🟠 TO CAPTURE |
| MOST/audio context | Recommended | 🟠 TO CAPTURE |
| Red Menu / MMI version evidence | Recommended | 🟠 TO CAPTURE |

Maximum allowed conclusion: `🟡 VARIANT` until controlled evidence exists.

### Package C — Future behavior-review package

Use only when reviewing a specific technical behavior later.

| Evidence | Required | Status |
|---|---:|---|
| Baseline diagnostic package | Yes | 🟠 TO CAPTURE |
| Original value/state | Yes | 🟠 TO CAPTURE |
| Observation evidence | Yes | 🟠 TO CAPTURE |
| DTC context | Yes | 🟠 TO CAPTURE |
| Rollback record | Yes where applicable | 🟠 TO CAPTURE |
| Variant context | Yes | 🟠 TO CAPTURE |

Maximum allowed conclusion depends on release gate review.

## Sanitization checklist

| Data | Required action |
|---|---|
| Full VIN | redact to partial VIN |
| Registration plate | blur or remove |
| Owner/customer data | remove |
| Location data | remove |
| Personal device paths/usernames | remove |
| Reflections showing private data | blur or crop |
| Paid/proprietary binaries | do not publish |

## Evidence quality checklist

| Evidence type | Minimum quality |
|---|---|
| Auto-Scan | complete, dated, sanitized, includes controller context |
| Photo | readable text, whole screen where useful, no private data |
| Video | clear sequence, no misleading cuts, linked to observation ID |
| Controller identity | address, part number, component/software context |
| DTC baseline | before-state context and controller association |
| UI observation | menu path, visible/selectable state, evidence link |
| Source review | reviewed under `SOURCE_REVIEW_PROTOCOL.md` |

## Promotion gates

| Target status | Minimum evidence |
|---|---|
| 🔴 HYPOTHESIS | idea, missing evidence listed |
| 🟠 TO VERIFY | partial evidence, no confirmed behavior |
| 🟡 VARIANT | defined variant evidence, limited scope |
| 🟢 CONFIRMED | controlled evidence, context, DTC review, rollback where applicable |

## Blocked until evidence exists

| Area | Status | Required evidence |
|---|---|---|
| Long Coding behavior | 🔴 BLOCKED | original data, DTC context, rollback record |
| Adaptation behavior | 🔴 BLOCKED | adaptation export, DTC context, rollback record |
| Security Access values | 🔴 BLOCKED | operation-specific proof and risk review |
| Dataset use | 🔴 BLOCKED | source, checksum, compatibility, backup/recovery |
| Gateway dependency confirmation | 🔴 BLOCKED | Gateway installation list and module context |
| Audio/MOST dependency confirmation | 🔴 BLOCKED | MOST/audio context and DTC evidence |
| Light dependency confirmation | 🔴 BLOCKED | BCM/Gateway/MMI evidence |

## Recommended capture order

| Order | Evidence | Why first |
|---:|---|---|
| 1 | MMI version screen | fastest read-only identity evidence |
| 2 | Red Menu identity photos | improves provisional SW/MU context |
| 3 | Full Auto-Scan | establishes diagnostic baseline |
| 4 | DTC baseline | prevents false attribution |
| 5 | Controller identification | verifies unit/module context |
| 6 | Gateway installation list | supports dependency mapping |
| 7 | MOST/audio baseline | supports audio dependency review |
| 8 | UI observation photos/videos | links visible behavior to evidence |
| 9 | Original backup data | required before future behavior review |
| 10 | Adaptation export | required before adaptation review |

## Current decision

This checklist prepares the repository for future evidence intake.

It does not add confirmed technical findings or operational instructions.
