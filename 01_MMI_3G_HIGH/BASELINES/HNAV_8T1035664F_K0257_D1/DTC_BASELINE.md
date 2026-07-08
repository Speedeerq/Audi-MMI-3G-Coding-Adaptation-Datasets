# DTC Baseline — HNAV 8T1 035 664 F / K0257 D1

## Purpose

This file captures diagnostic trouble codes before any MMI 3G High HNAV research changes.

DTC state is required to distinguish pre-existing issues from effects caused by coding/adaptation/dataset tests.

## DTC metadata

| Field | Value | Status |
|---|---|---|
| Baseline ID | `HNAV-8T1035664F-K0257-D1` | 🟠 TO VERIFY |
| Date captured | TBD | 🟠 TO CAPTURE |
| Tool used | TBD | 🟠 TO CAPTURE |
| Scan type | Full Auto-Scan | 🟠 TO CAPTURE |
| Vehicle | Audi A4 B8 research vehicle | 🟠 TO VERIFY |
| MMI controller address | TBD | 🟠 TO CAPTURE |
| Part number | `8T1 035 664 F` | 🟠 TO VERIFY |
| Software version | `HNav_EU_K0257_5_D1` / `HNav_EU_K0257_6_D1` | 🟠 TO VERIFY |
| DTC evidence file | TBD | 🟠 TO CAPTURE |

## DTC before changes

```text
TBD
```

## DTC summary table

| Controller | DTC | Status | Frequency | Freeze frame / notes | Pre-existing? | Evidence |
|---|---|---|---|---|---|---|
| TBD | TBD | TBD | TBD | TBD | UNKNOWN | None |

## DTC classification

| Classification | Meaning |
|---|---|
| PRE-EXISTING | Present before research change |
| CAUSED BY TEST | Appeared after a specific test |
| CLEARED AFTER ROLLBACK | Removed after original state restored |
| PERSISTENT AFTER ROLLBACK | Requires investigation |
| UNKNOWN | Not enough evidence |

## Required scan sequence

| Step | Action | Required |
|---:|---|---:|
| 1 | Full Auto-Scan before changes | Yes |
| 2 | Save MMI/controller-specific DTC | Yes |
| 3 | Save Gateway DTC | Recommended |
| 4 | Save MOST/audio related DTC | Recommended |
| 5 | Save camera/park assist DTC if relevant | Recommended |
| 6 | Save BCM/light DTC if relevant | Recommended |

## Research rule

If a DTC appears after a change and does not disappear after rollback, the related finding cannot be marked `🟢 CONFIRMED`.
