# HNAV Auto-Scan Intake Review — 2026-07-12

## Scope

This review evaluates the sanitized historical Auto-Scan package against baseline `HNAV-8T1035664F-K0257-D1`.

Source files:

```text
evidence/intake/MMI3GHIGH_HNAV_BASELINE_001/autoscan_summary_2026-05-12.json
evidence/intake/MMI3GHIGH_HNAV_BASELINE_001/autoscan_sanitized_extract_2026-05-12.md
evidence/intake/MMI3GHIGH_HNAV_BASELINE_001/dtc_baseline_2026-05-12.json
```

## Baseline impact

| Baseline area | Previous state | New evidence state | Decision |
|---|---|---|---|
| 5F diagnostic address | Project context / partial | Direct Auto-Scan block at address 5F | `CAPTURED` for this scan |
| 5F SW part number | Partial | `8T1 035 664 F` in direct Auto-Scan | `CAPTURED` for this scan |
| 5F HW identifier | Missing in public intake | `8T1 035 664 B` | `CAPTURED` for this scan |
| 5F component / software level | Partial | `H-BN-NA H52 0187` | `CAPTURED` for this scan |
| Red Menu firmware train | Prior-chat recovery only | Not present in Auto-Scan | Keep `PARTIAL` |
| Variant / RadioUnit / Sample | Prior-chat recovery only | Not present in Auto-Scan | Keep `PARTIAL` |
| Infotainment dependency context | Missing | 19/47/56/5F/6C observations captured | `PARTIAL` historical context |
| 5F DTC context | Missing | 03276, 03157 and 02452 extracted | `PARTIAL` historical context |
| Gateway DTC context | Missing | 01044 and 00459 extracted | `PARTIAL` historical context |
| Camera dependency context | Missing | 6C identity and 03006 extracted | `PARTIAL` historical context |
| Current pre-experiment state | Missing | Historical scan only | Keep `TO CAPTURE` |

## Important separation

The diagnostic component string `H-BN-NA H52 0187` must not be substituted for the engineering-menu firmware train `HNav_EU_K0257_5_D1`.

The Auto-Scan corroborates part number, hardware identifier, component family and software level. It does not directly corroborate Variant `9307`, RadioUnit `9471` or Sample `d1`.

## Claims not promoted

This review does not confirm:

- current coding correctness,
- any Byte/Bit meaning,
- adaptation behavior,
- Security Access requirements,
- root cause of 03276, 03157, 02452, 01044, 00459 or 03006,
- physical MOST topology,
- HNAV-to-HN+ feasibility or barrier location,
- current state after May 2026.

## Decision

```text
5F DIAGNOSTIC IDENTIFICATION: CAPTURED FOR ONE HISTORICAL SCAN
AUTOSCAN EVIDENCE: ACCEPTABLE AS PARTIAL HISTORICAL BASELINE
CURRENT BASELINE REFRESH: REQUIRED
TECHNICAL CLAIM PROMOTION: LIMITED
RELEASE GATE: BLOCKED
```
