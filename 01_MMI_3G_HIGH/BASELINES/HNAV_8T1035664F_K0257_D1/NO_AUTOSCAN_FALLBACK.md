# No Auto-Scan Fallback — HNAV Baseline

## Purpose

This workflow allows the HNAV baseline to move forward when a full Auto-Scan is temporarily unavailable.

It does not replace Auto-Scan.  
It creates a provisional evidence layer that must remain `🟠 TO VERIFY`, `🔴 HYPOTHESIS` or `⚫ UNKNOWN` until a full scan is attached.

## Rule

No coding/adaptation/Security Access/dataset finding can become `🟢 CONFIRMED` from fallback evidence alone.

Fallback evidence can support:

- system identification,
- provisional variant profile,
- menu tree mapping,
- visible UI behavior,
- research question creation,
- test planning.

Fallback evidence cannot confirm:

- byte/bit meanings,
- adaptation effects,
- Security Access values,
- dataset addresses/functions,
- module installation state,
- DTC-free baseline,
- rollback safety.

## Fallback evidence sources

| Source | Use | Maximum allowed status |
|---|---|---|
| Red Engineering Menu photo/transcription | SW train, MU version, region, map/database info | 🟠 TO VERIFY |
| MMI version screen photo | User-visible system version | 🟠 TO VERIFY |
| Physical unit label photo | Part number / hardware context | 🟠 TO VERIFY |
| Manual VCDS single-controller ID screenshot | Controller metadata | 🟡 VARIANT if complete |
| Green Menu read-only tree photo | Visible menu paths | 🟠 TO VERIFY |
| CAR menu screenshots | UI visibility mapping | 🟠 TO VERIFY |
| Audio source screenshots/videos | Visible vs functional source behavior | 🟠 TO VERIFY |
| Known project notes | Research context only | 🔴 HYPOTHESIS / 🟠 TO VERIFY |

## Fallback folder set

Recommended files:

```text
09_TEST_LOGS/2026/2026-07-08/HNAV-8T1035664F-K0257-D1/
├── red_menu_identification.template.md
├── mmi_version_screen.template.md
├── manual_controller_capture.template.md
├── ui_observation_log.template.md
└── media/
    ├── red_menu_001.jpg
    ├── mmi_version_001.jpg
    ├── unit_label_001.jpg
    ├── green_menu_001.jpg
    └── car_menu_001.jpg
```

## Minimum fallback package

If Auto-Scan is unavailable, collect at least:

| Item | Required for fallback | Status when captured |
|---|---:|---|
| Red Engineering Menu identification | Yes | 🟠 TO VERIFY |
| MMI version screen | Yes | 🟠 TO VERIFY |
| Unit part number photo or known label evidence | Recommended | 🟠 TO VERIFY |
| Manual controller identification from any tool | Recommended | 🟡 VARIANT if complete |
| DTC state | Not available | ⚫ UNKNOWN |
| Gateway installation list | Not available | ⚫ UNKNOWN |
| MOST/audio DTC state | Not available | ⚫ UNKNOWN |
| Original coding backup | Required before changes | 🔴 BLOCKED until captured |

## Allowed work without Auto-Scan

| Work item | Allowed? | Conditions |
|---|---:|---|
| Create research questions | Yes | Mark as hypothesis/unknown |
| Build menu tree inventory | Yes | Read-only photos/screenshots only |
| Record Red Menu identity | Yes | No engineering actions |
| Record MMI version screen | Yes | Read-only |
| Record physical unit label | Yes | Photo evidence |
| Record user-visible source behavior | Yes | No coding changes |
| Create compatibility notes | Limited | Must remain provisional |

## Blocked work without Auto-Scan

| Work item | Status | Reason |
|---|---|---|
| Byte/bit confirmation | 🔴 BLOCKED | No original coding + DTC before/after |
| Adaptation confirmation | 🔴 BLOCKED | No adaptation map + rollback |
| Security Access tests | 🔴 BLOCKED | No baseline + risk too high |
| Dataset/parameterization | 🔴 BLOCKED | No backup/recovery path |
| Gateway installation changes | 🔴 BLOCKED | No original gateway list |
| MOST/audio configuration changes | 🔴 BLOCKED | No DTC/MOST baseline |
| Light coding tests | 🔴 BLOCKED | No BCM/Gateway baseline |

## Fallback status policy

Use these statuses:

| Situation | Status |
|---|---|
| Photo evidence exists but no diagnostic scan | 🟠 TO VERIFY |
| Manual controller screenshot has part number + SW + coding | 🟡 VARIANT |
| UI behavior observed but no controller evidence | 🟠 TO VERIFY |
| Project note without evidence | 🔴 HYPOTHESIS |
| Unknown module presence | ⚫ UNKNOWN |

## Transition back to normal baseline

When Auto-Scan becomes available:

1. Paste full sanitized Auto-Scan into `AUTOSCAN_HNAV_TEMPLATE.md`.
2. Extract controller identification.
3. Extract DTC-before.
4. Extract Gateway installation list.
5. Extract MOST/audio status.
6. Compare fallback evidence against scan evidence.
7. Promote matching items only if evidence is sufficient.
8. Mark conflicting fallback notes as `🟡 VARIANT` or `🔴 CONFLICT`.

## Current decision

Fallback mode is allowed for evidence collection and documentation architecture only.

Coding/adaptation/dataset testing remains blocked.
