# Sanitized Auto-Scan Extract — 2026-05-12

## Scope

Public-safe historical extract for baseline `HNAV-8T1035664F-K0257-D1` and campaign `C-004`.

The private raw source is a VCDS Auto-Scan captured on 2026-05-12 at 19:00:02, with odometer 265250 km. This file is an extract, not a verbatim copy.

## Capture metadata

| Field | Sanitized value |
|---|---|
| Tool | VCDS with HEX-V2 |
| Tool version | AKP 25.3.1.1 / CB 0.4672.4 |
| Data version | 20250602 DS365.0 |
| Chassis context | FL-AU48 (8T0) |
| Vehicle context | Audi A4 B8, model year 2012 |
| VIN | REDACTED |
| Battery voltage | 11.7 V start / 11.7 V end; VIgn 11.9 V |

## Public exclusions

The following raw fields were intentionally omitted:

- full VIN and VINID,
- registration data,
- all controller and subsystem serial numbers,
- all coding values,
- WSC/importer/equipment values,
- VCID and CVN values,
- unrelated safety and immobilizer module details,
- raw freeze-frame bitfields,
- private file paths.

## Relevant network observations

| Address | Module | Scan observation | Evidence status |
|---|---|---|---|
| 07 | Control Head context | Not reachable | CAPTURED for this scan |
| 10 | Park/Steer Assist | Reachable; scan summary reported `UNREGISTERED 0001` | CAPTURED for this scan |
| 19 | CAN Gateway / J533 | Reachable; 2 DTCs | CAPTURED for this scan |
| 47 | Sound System / J525 | Reachable; no DTCs | CAPTURED for this scan |
| 56 | Radio | Reachable; no DTCs | CAPTURED for this scan |
| 5F | Information Electronics / J794 | Reachable; 3 DTCs | CAPTURED for this scan |
| 6C | Rear View Camera | Reachable; 1 DTC | CAPTURED for this scan |

This table records diagnostic visibility only. It is not a direct Gateway Installation List export.

## Controller identification

| Address | SW part number | HW identifier | Component / level |
|---|---|---|---|
| 19 | `8T0 907 468 AJ` | `8T0 907 468 L` | `GW-BEM 5CAN-M H10 0120` |
| 47 | `8T0 035 223 AN` | `8T0 035 223 AK` | `DSP Prem H10 0190` |
| 56 | `4G0 035 082 B` | `4G0 035 082` | `Radio U SIRIU H53 0076` |
| 5F | `8T1 035 664 F` | `8T1 035 664 B` | `H-BN-NA H52 0187` |
| 6C | `8T0 907 441 C` | `4L0 907 441 B` | `J772__Rearview 0040` |

## 5F subsystem observations

| Subsystem | Observed value |
|---|---|
| Navigation database | `8R0 060 884 KL` / `EUR 2023 3600` |
| Display | `8R0 919 604` / `DU7 High H41 0104` |
| Control panel | `8T0 919 609 G` / `E0380 Bedient H08 0100` |
| CD database | `8R0 060 961 A` / `2712` |

The Auto-Scan does not display the Red Menu firmware train, Variant, RadioUnit or Sample fields.

## Historical DTC context

### Address 19

| Code | Description | Frequency | Priority |
|---|---|---:|---:|
| `01044` | Control module incorrectly coded | 1 | 1 |
| `00459` | Front display and control unit J523 — no signal/communication | 1 | 2 |

### Address 5F

| Code | Description | Frequency | Priority |
|---|---|---:|---:|
| `03276` | Software version management check | 1 | 6 |
| `03157` | Functionality limited due to communication disruption | 10 | 6 |
| `02452` | Rear left display unit Y22 — no signal/communication | 1 | 5 |

### Address 6C

| Code | Description | Frequency | Priority |
|---|---|---:|---:|
| `03006` | Rear view camera system not calibrated | 1 | 2 |

No root-cause conclusion is made from these DTCs.

## Evidence boundary

```text
5F DIAGNOSTIC IDENTITY FOR THIS SCAN: CAPTURED
HISTORICAL NETWORK CONTEXT: PARTIAL
HISTORICAL DTC CONTEXT: PARTIAL
CURRENT PRE-EXPERIMENT STATE: NOT CAPTURED
DIRECT GATEWAY INSTALLATION LIST: NOT ATTACHED
CODING VALUES: NOT PUBLISHED
WRITE-CAPABLE ACTIONS: NOT AUTHORIZED
```
