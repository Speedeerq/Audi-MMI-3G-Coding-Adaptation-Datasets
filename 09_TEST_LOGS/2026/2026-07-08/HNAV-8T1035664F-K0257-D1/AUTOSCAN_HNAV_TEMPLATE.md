# Auto-Scan Template — HNAV 8T1 035 664 F / K0257 D1

## Purpose

This file is the primary intake template for the first HNAV Auto-Scan evidence package.

Paste sanitized VCDS / ODIS / VCP scan output into the raw sections below.  
Do not interpret byte/bit meanings from this file alone.

## Evidence metadata

| Field | Value | Status |
|---|---|---|
| Evidence ID | `HNAV-EV-001` | 🟠 TO CAPTURE |
| Baseline ID | `HNAV-8T1035664F-K0257-D1` | 🟠 TO VERIFY |
| Date captured | TBD | 🟠 TO CAPTURE |
| Tool used | TBD | 🟠 TO CAPTURE |
| Tool version | TBD | 🟠 TO CAPTURE |
| Interface | TBD | 🟠 TO CAPTURE |
| Vehicle | Audi A4 B8 research vehicle | 🟠 TO VERIFY |
| VIN partial | TBD | 🟠 TO CAPTURE |
| Market | TBD | 🟠 TO CAPTURE |
| Battery voltage | TBD | 🟠 TO CAPTURE |
| Ignition state | TBD | 🟠 TO CAPTURE |
| Engine state | TBD | 🟠 TO CAPTURE |
| Scan type | Full Auto-Scan before changes | 🟠 TO CAPTURE |
| Sanitized? | TBD | 🟠 TO CAPTURE |

## Sanitization checklist

Before committing real scan output:

| Data | Action | Done |
|---|---|---:|
| Full VIN | Redact to partial VIN | No |
| License plate | Remove if present | No |
| Owner/customer data | Remove | No |
| Personal file paths | Remove | No |
| Location data | Remove | No |
| Workshop/customer notes | Sanitize | No |

## Raw Auto-Scan paste area

Paste the sanitized full scan below.

```text
TBD - paste sanitized Auto-Scan here
```

## Controller extraction checklist

After pasting the scan, split key sections into separate files:

| Target file | Required source from Auto-Scan | Status |
|---|---|---|
| `controller_identification.md` | 5F/56/07 identification blocks | 🟠 TO CAPTURE |
| `dtc_before.md` | DTC state before changes | 🟠 TO CAPTURE |
| `gateway_installation_list.md` | Gateway installation list / installed modules | 🟠 TO CAPTURE |
| `most_audio_status.md` | MOST/audio/amplifier-related state | 🟠 TO CAPTURE |

## HNAV-related modules to inspect

| Address | Module | Extract? | Notes |
|---:|---|---:|---|
| 5F | Information Electronics | Yes | Primary candidate for MMI 3G High data depending on vehicle/tool |
| 56 | Radio | Yes | Some systems expose radio/infotainment data here |
| 07 | Control Head | Yes | MMI front panel/control head context |
| 19 | CAN Gateway | Yes | Installation list and network dependencies |
| 47 | Sound System | Yes if present | B&O/Bose/basic audio dependencies |
| 6C | Rear View Camera | If present | RVC dependency |
| 10 | Park Assist | If present | OPS/APS dependency |
| 09 | Central Electrics / BCM | If relevant | CAR/light menu dependency |
| 17 | Instrument Cluster | If relevant | Cluster/menu dependency |
| 55 | Headlight Range | If relevant | Xenon/AFS/light dependency |

## Baseline result summary

| Area | Result | Status | Evidence |
|---|---|---|---|
| Controller identification captured | TBD | 🟠 TO CAPTURE | TBD |
| Original coding visible in scan | TBD | 🟠 TO CAPTURE | TBD |
| DTC before captured | TBD | 🟠 TO CAPTURE | TBD |
| Gateway list captured | TBD | 🟠 TO CAPTURE | TBD |
| MOST/audio state captured | TBD | 🟠 TO CAPTURE | TBD |
| Ready for read-only mapping | No | ⚫ UNKNOWN | Requires completed baseline |
| Ready for coding/adaptation tests | No | 🔴 BLOCKED | Requires backup and rollback |
