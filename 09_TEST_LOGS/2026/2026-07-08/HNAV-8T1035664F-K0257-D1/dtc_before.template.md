# DTC Before Template — HNAV Baseline

## Purpose

Capture all DTCs present before any HNAV coding/adaptation/dataset research changes.

This file prevents false attribution of pre-existing faults to later tests.

## Metadata

| Field | Value | Status |
|---|---|---|
| Evidence ID | `HNAV-EV-006` | 🟠 TO CAPTURE |
| Baseline ID | `HNAV-8T1035664F-K0257-D1` | 🟠 TO VERIFY |
| Source file | `AUTOSCAN_HNAV_TEMPLATE.md` / raw Auto-Scan | 🟠 TO CAPTURE |
| Date captured | TBD | 🟠 TO CAPTURE |
| Tool used | TBD | 🟠 TO CAPTURE |
| Scan condition | Before changes | 🟠 TO CAPTURE |

## DTC summary

| Controller | DTC code | Description | Status/frequency | Freeze frame / context | Pre-existing? | Risk impact | Evidence |
|---|---|---|---|---|---|---|---|
| TBD | TBD | TBD | TBD | TBD | UNKNOWN | UNKNOWN | TBD |

## MMI/HNAV-specific DTCs

```text
TBD - paste MMI/HNAV-related DTC block here
```

## Gateway/network DTCs

```text
TBD - paste Gateway/network-related DTC block here
```

## MOST/audio DTCs

```text
TBD - paste MOST/audio/amplifier-related DTC block here
```

## Camera/parking DTCs

```text
TBD - paste RVC/OPS/APS-related DTC block here if present
```

## Lighting/BCM DTCs

```text
TBD - paste BCM/headlight range/light-related DTC block here if relevant
```

## DTC classification

| Classification | Meaning |
|---|---|
| PRE-EXISTING | Present before any research change |
| CAUSED BY TEST | Appeared after a specific test |
| CLEARED AFTER ROLLBACK | Removed after original state restored |
| PERSISTENT AFTER ROLLBACK | Requires investigation |
| UNKNOWN | Not enough evidence |

## Baseline decision

| Question | Answer | Status |
|---|---|---|
| Are there pre-existing HNAV/MMI DTCs? | TBD | 🟠 TO CAPTURE |
| Are there pre-existing Gateway/network DTCs? | TBD | 🟠 TO CAPTURE |
| Are there pre-existing MOST/audio DTCs? | TBD | 🟠 TO CAPTURE |
| Are there DTCs that block safe testing? | TBD | 🟠 TO CAPTURE |
| Is baseline safe for read-only mapping? | No until reviewed | ⚫ UNKNOWN |
| Is baseline safe for coding/adaptation tests? | No until reviewed | 🔴 BLOCKED |
