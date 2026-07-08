# HNAV Baseline — 8T1 035 664 F / K0257 D1

## Purpose

This folder tracks the first known Audi MMI 3G High HNAV baseline for the research project.

This is not a coding recommendation.  
This is a structured evidence package for one known unit context.

## Baseline identity

| Field | Value | Status |
|---|---|---|
| Baseline ID | `HNAV-8T1035664F-K0257-D1` | 🟠 TO VERIFY |
| System | Audi MMI 3G High / HNAV | 🟠 TO VERIFY |
| Unit part number | `8T1 035 664 F` | 🟠 TO VERIFY |
| Known SW train | `HNav_EU_K0257_5_D1` / `HNav_EU_K0257_6_D1` | 🟡 VARIANT |
| Variant | `9307` | 🟠 TO VERIFY |
| RadioUnit | `9471` | 🟠 TO VERIFY |
| MU version | `0187` | 🟠 TO VERIFY |
| Sample | `d1` | 🟠 TO VERIFY |
| Vehicle context | Audi A4 B8, user research vehicle | 🟠 TO VERIFY |
| Evidence package | Incomplete | ⚫ UNKNOWN |

## Folder contents

| File | Purpose |
|---|---|
| `UNIT_PROFILE.md` | Baseline identity and known/unknown metadata |
| `EVIDENCE_INDEX.md` | Evidence checklist and file index |
| `CODING_BACKUP.md` | Long coding backup capture template |
| `ADAPTATION_MAP.md` | Adaptation map capture template |
| `DTC_BASELINE.md` | DTC-before baseline capture template |
| `TEST_PLAN.md` | First controlled test plan for this HNAV unit |

## Evidence policy

This baseline may be used to create confirmed findings only after adding:

1. full Auto-Scan,
2. controller identification block,
3. original long coding,
4. adaptation map/export,
5. DTC before changes,
6. Red Engineering Menu photos/transcription,
7. Green Menu state where relevant,
8. rollback-capable test logs.

## Current confidence

| Area | Status | Reason |
|---|---|---|
| Unit identity | 🟠 TO VERIFY | Known from project notes, needs attached scan evidence |
| Coding data | ⚫ UNKNOWN | No baseline coding file attached yet |
| Adaptation data | ⚫ UNKNOWN | No adaptation map attached yet |
| DTC state | ⚫ UNKNOWN | No Auto-Scan/DTC baseline attached yet |
| Security Access | ⚫ UNKNOWN | No tested operation attached yet |
| Dataset state | ⚫ UNKNOWN | No dataset backup/source attached yet |

## Safe next action

Collect and attach baseline evidence before any coding/adaptation tests.

Recommended first evidence folder:

```text
09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/
```

Recommended backup folder:

```text
10_BACKUPS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/
```
