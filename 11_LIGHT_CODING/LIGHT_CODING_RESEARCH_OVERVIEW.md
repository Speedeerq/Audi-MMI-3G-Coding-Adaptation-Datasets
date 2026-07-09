# Light Research Overview

## Purpose

This folder is an offline documentation shell for researching relationships between MMI 3G High menus and lighting-related control modules.

It does not contain operational procedures, values, byte mappings or adaptation instructions.

## Scope

| Topic | Related modules | Status |
|---|---|---|
| MMI CAR light menu visibility | 5F, 09, 55, 19 | 🟠 TO VERIFY |
| BCM/J519 context | 09 Central Electrics | 🟠 TO VERIFY |
| Headlight range context | 55, 09, 19 | 🟠 TO VERIFY |
| CH/LH menu context | 5F, 09, 46, 19 | 🟠 TO VERIFY |
| DRL menu context | 5F, 09, 19 | 🟠 TO VERIFY |
| Front/rear lamp equipment context | 09, 55, 17, 19 | 🟠 TO VERIFY |
| Market/equipment differences | 09, 55, 17, 19, 5F | 🔴 HYPOTHESIS |
| Warning/reporting context | 09, 17, 5F | 🟠 TO VERIFY |

## Evidence required

| Evidence | Purpose |
|---|---|
| Full Auto-Scan | module context |
| BCM/J519 identification | variant context |
| original backup data | rollback context |
| DTC baseline | fault context |
| MMI screen evidence | menu visibility |
| equipment/market context | variant classification |

## Files

| File | Purpose |
|---|---|
| `BCM1_J519_LIGHT_DEPENDENCY_MATRIX.md` | BCM/J519 evidence matrix |
| `MMI_CAR_LIGHT_MENU_DEPENDENCY.md` | MMI menu evidence matrix |
| `LIGHT_CODING_TEST_PROTOCOL.md` | read-only evidence and review protocol |

## Current decision

All content in this folder is documentation planning only.

No confirmed technical values are present.
