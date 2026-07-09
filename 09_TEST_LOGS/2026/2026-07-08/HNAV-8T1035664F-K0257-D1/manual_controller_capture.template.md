# Manual Controller Capture Template — HNAV Fallback

## Purpose

Capture controller identity manually when full Auto-Scan is not available.

This may come from a single-controller VCDS/ODIS/VCP screen, controller info screenshot, or copied identification block.

## Metadata

| Field | Value | Status |
|---|---|---|
| Evidence ID | `HNAV-FB-MANUAL-CTRL-001` | 🟠 TO CAPTURE |
| Baseline ID | `HNAV-8T1035664F-K0257-D1` | 🟠 TO VERIFY |
| Capture date | TBD | 🟠 TO CAPTURE |
| Tool used | TBD | 🟠 TO CAPTURE |
| Tool version | TBD | 🟠 TO CAPTURE |
| Interface | TBD | 🟠 TO CAPTURE |
| Full Auto-Scan available? | No | 🟠 TO VERIFY |

## Controller identification

| Field | Value | Status | Evidence media/source |
|---|---|---|---|
| Controller address | TBD | 🟠 TO CAPTURE | TBD |
| Controller name | TBD | 🟠 TO CAPTURE | TBD |
| Part number | TBD | 🟠 TO CAPTURE | TBD |
| Component | TBD | 🟠 TO CAPTURE | TBD |
| Hardware version | TBD | 🟠 TO CAPTURE | TBD |
| Software version | TBD | 🟠 TO CAPTURE | TBD |
| Coding | TBD | 🟠 TO CAPTURE | TBD |
| Shop/WSC/importer/equipment | TBD | 🟠 TO CAPTURE | TBD |
| DTC count visible? | TBD | 🟠 TO CAPTURE | TBD |

## Raw copied controller block

```text
TBD - paste single-controller identification block here
```

## Screenshot checklist

| Screenshot/photo | Required | Done |
|---|---:|---:|
| Controller ID screen | Yes | No |
| Coding field visible | Recommended | No |
| Part number and component visible | Yes | No |
| Fault/DTC count visible | Recommended | No |
| Tool/version visible | Optional | No |

## Status rule

Manual controller capture can reach `🟡 VARIANT` when it includes:

1. controller address,
2. part number,
3. SW/component version,
4. coding or proof that coding field exists,
5. evidence screenshot or copied block.

It cannot become `🟢 CONFIRMED` without full context or corroborating evidence.
