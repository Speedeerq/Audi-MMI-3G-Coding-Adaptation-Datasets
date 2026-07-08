# Controller Identification Template — HNAV Baseline

## Purpose

Extract controller identification data from the full Auto-Scan and Red Engineering Menu evidence.

This file does not confirm behavior. It only captures identity and variant metadata.

## Metadata

| Field | Value | Status |
|---|---|---|
| Evidence ID | `HNAV-EV-002` | 🟠 TO CAPTURE |
| Baseline ID | `HNAV-8T1035664F-K0257-D1` | 🟠 TO VERIFY |
| Source file | `AUTOSCAN_HNAV_TEMPLATE.md` / raw Auto-Scan | 🟠 TO CAPTURE |
| Date extracted | TBD | 🟠 TO CAPTURE |
| Extracted by | TBD | 🟠 TO CAPTURE |

## MMI / HNAV controller block

| Field | Value | Status | Evidence line/source |
|---|---|---|---|
| Controller address | TBD | 🟠 TO CAPTURE | TBD |
| Controller label/name | TBD | 🟠 TO CAPTURE | TBD |
| Part number | `8T1 035 664 F` expected | 🟠 TO VERIFY | TBD |
| Component | TBD | 🟠 TO CAPTURE | TBD |
| Hardware version | TBD | 🟠 TO CAPTURE | TBD |
| Software version / train | `HNav_EU_K0257_5_D1` / `HNav_EU_K0257_6_D1` expected | 🟠 TO VERIFY | TBD |
| Revision | TBD | 🟠 TO CAPTURE | TBD |
| Coding | TBD | 🟠 TO CAPTURE | TBD |
| Shop / WSC / importer / equipment | TBD | 🟠 TO CAPTURE | TBD |
| VCID / diagnostic session metadata | TBD | 🟠 TO CAPTURE | TBD |

## Red Engineering Menu cross-check

| Field | Value | Status | Evidence |
|---|---|---|---|
| SW train displayed | TBD | 🟠 TO CAPTURE | TBD |
| MU/SW version displayed | TBD | 🟠 TO CAPTURE | TBD |
| Region displayed | TBD | 🟠 TO CAPTURE | TBD |
| Navigation DB / map version | TBD | 🟠 TO CAPTURE | TBD |
| Variant | `9307` expected | 🟠 TO VERIFY | TBD |
| RadioUnit | `9471` expected | 🟠 TO VERIFY | TBD |
| Sample | `d1` expected | 🟠 TO VERIFY | TBD |

## Related controller presence

| Address | Module | Present? | Part number | SW/component | DTC present? | Status |
|---:|---|---|---|---|---|---|
| 5F | Information Electronics | TBD | TBD | TBD | TBD | 🟠 TO CAPTURE |
| 56 | Radio | TBD | TBD | TBD | TBD | 🟠 TO CAPTURE |
| 07 | Control Head | TBD | TBD | TBD | TBD | 🟠 TO CAPTURE |
| 19 | CAN Gateway | TBD | TBD | TBD | TBD | 🟠 TO CAPTURE |
| 47 | Sound System | TBD | TBD | TBD | TBD | 🟠 TO CAPTURE |
| 6C | Rear View Camera | TBD | TBD | TBD | TBD | 🟠 TO CAPTURE |
| 10 | Park Assist | TBD | TBD | TBD | TBD | 🟠 TO CAPTURE |
| 09 | Central Electrics / BCM | TBD | TBD | TBD | TBD | 🟠 TO CAPTURE |
| 17 | Instrument Cluster | TBD | TBD | TBD | TBD | 🟠 TO CAPTURE |
| 55 | Headlight Range | TBD | TBD | TBD | TBD | 🟠 TO CAPTURE |

## Confirmation rule

The HNAV profile may move from `🟠 TO VERIFY` to `🟢 CONFIRMED` only when controller identification and Red Menu identification agree or a discrepancy is explicitly documented as `🟡 VARIANT`.
