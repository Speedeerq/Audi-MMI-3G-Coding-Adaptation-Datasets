# Adaptation Map — HNAV 8T1 035 664 F / K0257 D1

## Purpose

This file captures the original adaptation channel baseline for the HNAV unit before research changes.

Do not treat channel names, values or effects as confirmed unless evidence exists.

## Adaptation metadata

| Field | Value | Status |
|---|---|---|
| Baseline ID | `HNAV-8T1035664F-K0257-D1` | 🟠 TO VERIFY |
| Date captured | TBD | 🟠 TO CAPTURE |
| Tool used | TBD | 🟠 TO CAPTURE |
| Controller address | TBD | 🟠 TO CAPTURE |
| Controller name | TBD | 🟠 TO CAPTURE |
| Part number | `8T1 035 664 F` | 🟠 TO VERIFY |
| Software version | `HNav_EU_K0257_5_D1` / `HNav_EU_K0257_6_D1` | 🟠 TO VERIFY |
| Adaptation export file | TBD | 🟠 TO CAPTURE |
| DTC before | TBD | 🟠 TO CAPTURE |
| Security Access used? | TBD | ⚫ UNKNOWN |

## Raw adaptation map reference

Recommended evidence file:

```text
09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/adaptation_map_before.csv
```

## Channel capture table

| Channel | Name | Observed value | Unit/range | Security Access required? | Status | Evidence |
|---|---|---|---|---|---|---|
| TBD | TBD | TBD | TBD | UNKNOWN | ⚫ UNKNOWN | None |

## Capture checklist

| Step | Done | Notes |
|---|---:|---|
| Full Auto-Scan saved | No | Required |
| Controller identification saved | No | Required |
| Full adaptation map exported | No | Recommended |
| Individual changed channels recorded | No | Required before any test |
| DTC before saved | No | Required |
| Original values restorable | No | Required before testing |

## Security Access tracking

| Operation | Security Access required? | Value published? | Evidence | Status |
|---|---|---|---|---|
| Read adaptation map | UNKNOWN | No | None | ⚫ UNKNOWN |
| Change adaptation value | UNKNOWN | No | None | ⚫ UNKNOWN |

## Promotion rule

An adaptation channel may be added to `MMI_3G_HIGH_ADAPTATIONS.md` only when:

1. original value is captured,
2. changed value is captured,
3. effect is observed,
4. DTC before/after is captured,
5. Security Access requirement is recorded,
6. rollback is successful,
7. evidence is linked.
