# Gateway Installation List Template — HNAV Baseline

## Purpose

Capture Gateway installation list and network-related context before HNAV research tests.

Many MMI/CAR menu functions depend on whether related modules are installed, coded and reachable.

## Metadata

| Field | Value | Status |
|---|---|---|
| Evidence ID | `HNAV-EV-007` | 🟠 TO CAPTURE |
| Baseline ID | `HNAV-8T1035664F-K0257-D1` | 🟠 TO VERIFY |
| Source file | `AUTOSCAN_HNAV_TEMPLATE.md` / Gateway module block | 🟠 TO CAPTURE |
| Gateway controller address | `19` | 🟠 TO CAPTURE |
| Gateway part number | TBD | 🟠 TO CAPTURE |
| Gateway software/component | TBD | 🟠 TO CAPTURE |
| Date captured | TBD | 🟠 TO CAPTURE |

## Installation list extract

```text
TBD - paste Gateway installation list / installed modules here
```

## Module presence table

| Address | Module | Installed/listed? | Communicating? | DTC present? | Relevance to HNAV | Status |
|---:|---|---|---|---|---|---|
| 5F | Information Electronics | TBD | TBD | TBD | Primary infotainment dependency | 🟠 TO CAPTURE |
| 56 | Radio | TBD | TBD | TBD | Radio/infotainment variant dependency | 🟠 TO CAPTURE |
| 07 | Control Head | TBD | TBD | TBD | MMI controls | 🟠 TO CAPTURE |
| 09 | Central Electrics / BCM | TBD | TBD | TBD | Lighting/CAR menu dependencies | 🟠 TO CAPTURE |
| 17 | Instrument Cluster | TBD | TBD | TBD | Display/menu/vehicle state dependency | 🟠 TO CAPTURE |
| 19 | CAN Gateway | TBD | TBD | TBD | Network baseline | 🟠 TO CAPTURE |
| 46 | Central Convenience | TBD | TBD | TBD | Comfort/CAR menu dependency | 🟠 TO CAPTURE |
| 47 | Sound System | TBD | TBD | TBD | Audio/MOST dependency | 🟠 TO CAPTURE |
| 6C | Rear View Camera | TBD | TBD | TBD | Camera/RVC dependency | 🟠 TO CAPTURE |
| 10 | Park Assist | TBD | TBD | TBD | OPS/APS dependency | 🟠 TO CAPTURE |
| 55 | Headlight Range | TBD | TBD | TBD | Xenon/AFS/light dependency | 🟠 TO CAPTURE |

## Gateway research notes

| Question | Answer | Status |
|---|---|---|
| Is HNAV exposed at 5F, 56, or both in this vehicle/tool context? | TBD | 🟠 TO CAPTURE |
| Are camera/parking modules installed? | TBD | 🟠 TO CAPTURE |
| Is an external sound system listed? | TBD | 🟠 TO CAPTURE |
| Are there gateway communication faults? | TBD | 🟠 TO CAPTURE |
| Does the installation list support planned CAR menu tests? | TBD | ⚫ UNKNOWN |

## Risk note

Do not change the Gateway installation list during baseline capture.

Any Gateway change must be a separate high-risk test with:

1. original installation list backup,
2. DTC before/after,
3. single-module change only,
4. rollback verification,
5. communication check after rollback.
