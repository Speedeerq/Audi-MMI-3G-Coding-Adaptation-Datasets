# MMI 3G High — CAR Menu Dependency Matrix

## Purpose

This file maps provisional relationships between MMI 3G High CAR menu areas and related vehicle modules.

This is an offline research matrix. It does not confirm behavior and does not provide instructions for vehicle changes.

## Status policy

| Status | Meaning |
|---|---|
| ⚫ UNKNOWN | Dependency not assessed |
| 🔴 HYPOTHESIS | Research suspicion only |
| 🟠 TO VERIFY | Evidence required |
| 🟡 VARIANT | May depend on hardware, software, market or equipment |
| 🟢 CONFIRMED | Not allowed without controlled evidence |

## CAR menu matrix

| CAR menu area | Possible related modules | Evidence required | Risk | Read-only observation allowed? | Blocked until evidence exists | Status |
|---|---|---|---|---:|---|---|
| CAR menu root | 5F, 19 | MMI screen photos, Gateway installation list | MEDIUM | Yes | Cause attribution | 🟠 TO VERIFY |
| Vehicle settings | 5F, 19, 09, 46, 17 | UI evidence, module presence, DTC context | HIGH | Yes | Behavior claims | 🟠 TO VERIFY |
| Exterior lights | 5F, 09, 55, 19 | BCM/J519 context, headlight range context, DTC context | HIGH | Yes | Technical interpretation | 🟠 TO VERIFY |
| Coming Home / Leaving Home | 5F, 09, 46, 19 | UI evidence, body module context, DTC context | HIGH | Yes | Cause/effect claim | 🟠 TO VERIFY |
| Parking aid | 5F, 10, 6C, 19 | Gateway list, park assist context, reverse UI evidence | HIGH | Yes | Module dependency claim | 🟠 TO VERIFY |
| Reverse camera | 5F, 6C, 10, 19 | Camera module context, reverse screen evidence, DTC context | HIGH | Yes | Cause/effect claim | 🟠 TO VERIFY |
| Central locking | 5F, 46, 09, 19 | Comfort/body module context, UI evidence | HIGH | Yes | Cause/effect claim | 🟠 TO VERIFY |
| Service / vehicle info | 5F, 17, 19 | Cluster context, UI evidence, service data context | MEDIUM | Yes | Generalization beyond observed system | 🟠 TO VERIFY |
| Audio settings | 5F, 56, 47, 19 | Audio/MOST context, UI evidence, DTC context | HIGH | Yes | Audio dependency claim | 🟠 TO VERIFY |
| Driver assistance placeholders | 5F, 19, assistance-related modules | Gateway list, module presence, UI evidence | HIGH | Yes | Feature availability claim | ⚫ UNKNOWN |

## Observation template

| Observation ID | Menu path | Visible? | Selectable? | User-visible result | Related modules suspected | Evidence | Status |
|---|---|---|---|---|---|---|---|
| CAR-OBS-001 | TBD | TBD | TBD | TBD | TBD | TBD | 🟠 TO VERIFY |

## Evidence rules

| Claim type | Required evidence |
|---|---|
| Menu exists | Clear UI photo or video |
| Menu is functional | UI evidence plus module context |
| Module dependency | Gateway list plus related module scan context |
| Fault-free baseline | DTC baseline |
| Variant-specific behavior | Controller part number, software version, market and equipment context |

## Current decision

This matrix may be used for planning read-only evidence capture and future review.

It must not be used as an operational instruction.
