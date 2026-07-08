# MMI 3G High — Overview

## Purpose

This file defines the research boundary for Audi MMI 3G High.

It does not contain confirmed byte/bit mappings, login values or dataset values yet.

## System status

| Field | Value |
|---|---|
| System | Audi MMI 3G High |
| Research phase | Initial shell |
| Data confidence | ⚫ UNKNOWN unless linked to evidence |
| Primary repository area | `01_MMI_3G_HIGH/` |
| Related modules | `5F`, `56`, `07`, `19`, `09`, `17`, `46`, `47`, `6C`, `10`, `55` |

## Research scope

| Area | Included | Notes |
|---|---:|---|
| Long Coding | Yes | Every byte/bit must be marked with status |
| Adaptations | Yes | Every channel must include value/risk/rollback fields |
| Security Access | Yes | No guessed logins |
| Datasets | Yes | No binary datasets without verified source |
| Green Menu | Yes | Unknown options must be marked |
| Red Engineering Menu | Yes | SW train/version evidence required |
| Audio sources | Yes | MOST/audio amplifier dependencies expected |
| CAR menu | Yes | Gateway/BCM/cluster/camera/park assist dependencies expected |
| Compatibility | Yes | HW/SW/market/equipment matrix required |

## System identification checklist

Before adding MMI 3G High findings, record:

| Field | Required | Example value |
|---|---:|---|
| Vehicle | Yes | `Audi A4 B8` |
| Model year | Yes | `YYYY` |
| Market | Yes | `EU / USA / ROW / UNKNOWN` |
| VIN partial | Recommended | `WAU****123` |
| Controller address | Yes | `5F`, `56`, or other observed address |
| Controller part number | Yes | `UNKNOWN until scanned` |
| Hardware version | Recommended | `UNKNOWN until scanned` |
| Software train | Yes | `UNKNOWN until scanned` |
| MU/SW version | Yes | `UNKNOWN until scanned` |
| Coding before | Yes | Exported before change |
| Adaptation map | Recommended | Exported before change |
| DTC before | Yes | Full scan before change |

## Evidence status policy

| Status | Meaning |
|---|---|
| 🟢 CONFIRMED | Controlled evidence exists |
| 🟡 VARIANT | Confirmed only for a defined HW/SW/vehicle/market/equipment variant |
| 🟠 TO VERIFY | Plausible but not sufficiently tested |
| 🔴 HYPOTHESIS | Research hypothesis only |
| ⚫ UNKNOWN | Not known or not tested |

## Dependency map

MMI 3G High behavior may depend on external modules.

| Dependency area | Related modules | Research reason |
|---|---|---|
| Gateway installation list | `19` | Menu visibility, module presence, communication |
| Central electrics / lights | `09`, `55` | DRL, CH/LH, xenon/AFS, lamp errors |
| Audio/MOST | `47`, `56`, `5F` | Amplifier, source availability, sound system behavior |
| Camera / parking | `6C`, `10`, `5F` | RVC/OPS visualization and CAR menu |
| Instrument cluster | `17` | Driver display, menus, language/display dependencies |
| Comfort/body | `46`, `09` | Comfort functions exposed in CAR menu |
| Control panel | `07` | Button/control behavior and diagnostic addressing |

## Open research questions

| ID | Question | Status | Target file |
|---|---|---|---|
| HIGH-Q001 | Which controller address exposes primary long coding on each MMI 3G High variant? | ⚫ UNKNOWN | `MMI_3G_HIGH_LONG_CODING.md` |
| HIGH-Q002 | Which adaptation channels are safe UI-level changes and which are high-risk? | ⚫ UNKNOWN | `MMI_3G_HIGH_ADAPTATIONS.md` |
| HIGH-Q003 | Which Security Access values are required for which operations? | ⚫ UNKNOWN | `MMI_3G_HIGH_SECURITY_ACCESS.md` |
| HIGH-Q004 | Which Green Menu options affect MOST/audio/boot/update behavior? | ⚫ UNKNOWN | `MMI_3G_HIGH_GREEN_MENU.md` |
| HIGH-Q005 | Which CAR menu entries depend on Gateway/BCM/camera/park assist coding? | ⚫ UNKNOWN | `MMI_3G_HIGH_CAR_MENU.md` |

## Safety baseline

Before any test:

1. Save Auto-Scan.
2. Save original coding.
3. Save adaptation values where applicable.
4. Save DTC before change.
5. Record controller part number and SW version.
6. Define rollback.
7. Change one item at a time.
8. Re-scan after change.
9. Roll back and verify behavior.

## Next files

| File | Purpose |
|---|---|
| `MMI_3G_HIGH_LONG_CODING.md` | Byte/bit research shell |
| `MMI_3G_HIGH_ADAPTATIONS.md` | Adaptation channel research shell |
| `MMI_3G_HIGH_SECURITY_ACCESS.md` | Security Access register |
| `MMI_3G_HIGH_DATASETS.md` | Dataset research register |
| `MMI_3G_HIGH_GREEN_MENU.md` | Green Menu research |
| `MMI_3G_HIGH_RED_MENU.md` | Red Engineering Menu research |
| `MMI_3G_HIGH_AUDIO_SOURCES.md` | Audio/MOST/source dependency research |
| `MMI_3G_HIGH_CAR_MENU.md` | CAR menu dependency research |
| `MMI_3G_HIGH_TEST_MATRIX.md` | High-specific test matrix |
