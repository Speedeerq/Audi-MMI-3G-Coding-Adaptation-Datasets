# MMI 3G High — Compatibility Matrix

## Purpose

This file defines the compatibility evidence model for MMI 3G High research.

It does not confirm compatibility for any vehicle or module combination until evidence exists.

## Compatibility matrix template

| Baseline ID | HW part number | SW train | MU version | Market | Vehicle platform | Gateway context | Sound system | Camera | Park assist | Cluster | BCM | Map/region context | Evidence status | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| HNAV-8T1035664F-K0257-D1 | 8T1 035 664 F | HNav_EU_K0257_5_D1 / HNav_EU_K0257_6_D1 | 0187 | TBD | Audi A4 B8 context | ⚫ UNKNOWN | ⚫ UNKNOWN | ⚫ UNKNOWN | ⚫ UNKNOWN | ⚫ UNKNOWN | ⚫ UNKNOWN | 🟠 TO VERIFY | 🟠 TO VERIFY | Project baseline, needs evidence |

## Required fields before compatibility claim

| Field | Required evidence | Status |
|---|---|---|
| HW part number | controller ID, unit label or scan | 🟠 TO CAPTURE |
| SW train | Red Menu, MMI version screen or scan | 🟠 TO CAPTURE |
| MU version | Red Menu or version evidence | 🟠 TO CAPTURE |
| Market | scan/version/menu/vehicle context | 🟠 TO CAPTURE |
| Platform | Auto-Scan or verified vehicle context | 🟠 TO CAPTURE |
| Gateway | installation list | 🟠 TO CAPTURE |
| Sound system | module context and DTC context | 🟠 TO CAPTURE |
| Camera | module context and reverse UI evidence | 🟠 TO CAPTURE |
| Park assist | module context and UI evidence | 🟠 TO CAPTURE |
| Cluster | controller context | 🟠 TO CAPTURE |
| BCM | controller context | 🟠 TO CAPTURE |
| Map/region | version screen or Red Menu evidence | 🟠 TO CAPTURE |

## Compatibility levels

| Level | Meaning |
|---|---|
| C0 — unknown | no usable evidence |
| C1 — provisional | partial identity evidence |
| C2 — variant profile | scan/context available for one variant |
| C3 — tested variant | controlled observation exists |
| C4 — release candidate | repeated evidence and release gate passed |

## Current decision

Current matrix entries are provisional only and must not be used as customer, retrofit or coding guidance.
