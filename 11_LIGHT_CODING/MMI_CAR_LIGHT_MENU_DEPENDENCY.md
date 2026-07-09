# MMI CAR Light Menu Dependency

## Purpose

This file prepares a read-only evidence model for MMI CAR lighting-related menus.

It does not document operational changes or confirmed values.

## Menu dependency table

| Menu area | Possible related modules | Read-only evidence | Diagnostic evidence needed | Status |
|---|---|---|---|---|
| Lighting menu root | 5F, 09, 19 | screen photo/video | Auto-Scan, Gateway list, BCM context | 🟠 TO VERIFY |
| DRL menu item | 5F, 09, 19 | screen photo/video | BCM context, DTC baseline | 🟠 TO VERIFY |
| CH/LH menu item | 5F, 09, 46, 19 | screen photo/video | BCM/body module context, DTC baseline | 🟠 TO VERIFY |
| Exterior light settings | 5F, 09, 55, 19 | screen photo/video | BCM/headlight range context | 🟠 TO VERIFY |
| Warning display context | 5F, 09, 17 | screen/photo evidence | DTC and cluster context | 🟠 TO VERIFY |

## Observation template

| Observation ID | Menu path | Visible? | Selectable? | Notes | Evidence | Status |
|---|---|---|---|---|---|---|
| LIGHT-MENU-001 | TBD | TBD | TBD | TBD | TBD | 🟠 TO VERIFY |

## Blocked conclusions

| Conclusion | Status |
|---|---|
| Which value controls a menu item | 🔴 BLOCKED |
| Which module alone causes visibility | 🔴 BLOCKED |
| Whether a menu item is globally available | 🔴 BLOCKED |
| Any operational change | 🔴 BLOCKED |

## Current decision

This file supports read-only observation planning only.
