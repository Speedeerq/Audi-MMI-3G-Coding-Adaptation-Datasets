# Unit Profile — HNAV 8T1 035 664 F / K0257 D1

## Baseline purpose

This file records the known unit profile for the first MMI 3G High HNAV research baseline.

Values in this file are not automatically confirmed.  
A field becomes `🟢 CONFIRMED` only when linked to evidence such as Auto-Scan, Red Engineering Menu photo, controller identification log or equivalent diagnostic output.

## Identification

| Field | Value | Status | Evidence |
|---|---|---|---|
| Baseline ID | `HNAV-8T1035664F-K0257-D1` | 🟠 TO VERIFY | Pending |
| System family | MMI 3G High | 🟠 TO VERIFY | Pending |
| SW family | HNAV | 🟠 TO VERIFY | Pending |
| Controller address | `5F` or `56` depending on diagnostic exposure | 🟡 VARIANT | Pending scan |
| Unit part number | `8T1 035 664 F` | 🟠 TO VERIFY | Pending scan/photo |
| SW train observed | `HNav_EU_K0257_5_D1` | 🟠 TO VERIFY | Pending Red Menu/scan |
| SW train alternate/current | `HNav_EU_K0257_6_D1` | 🟠 TO VERIFY | Pending Red Menu/scan |
| Variant | `9307` | 🟠 TO VERIFY | Pending evidence |
| RadioUnit | `9471` | 🟠 TO VERIFY | Pending evidence |
| MU version | `0187` | 🟠 TO VERIFY | Pending evidence |
| Sample | `d1` | 🟠 TO VERIFY | Pending evidence |
| Market | EU-converted / EU context suspected | 🔴 HYPOTHESIS | Pending evidence |
| Vehicle | Audi A4 B8 | 🟠 TO VERIFY | Pending Auto-Scan |
| Body | UNKNOWN | ⚫ UNKNOWN | Pending evidence |
| Model year | UNKNOWN | ⚫ UNKNOWN | Pending evidence |
| Audio system | UNKNOWN | ⚫ UNKNOWN | Pending evidence |
| Camera / OPS | UNKNOWN | ⚫ UNKNOWN | Pending evidence |
| Gateway installation list | UNKNOWN | ⚫ UNKNOWN | Pending Auto-Scan |

## Known context from project notes

| Item | Value | Status |
|---|---|---|
| Main active research unit | `8T1 035 664 F` | 🟠 TO VERIFY |
| Known train history | `HNav_EU_K0257_5_D1` → `HNav_EU_K0257_6_D1` | 🟠 TO VERIFY |
| Research relevance | MMI 3G High baseline for long coding/adaptation/dataset research | 🟠 TO VERIFY |

## Required evidence to confirm profile

| Evidence item | Required | Current state |
|---|---:|---|
| Full Auto-Scan | Yes | Missing |
| Controller identification block | Yes | Missing |
| Red Engineering Menu photo/transcription | Yes | Missing |
| Original coding | Yes | Missing |
| Adaptation map | Recommended | Missing |
| DTC before changes | Yes | Missing |
| Gateway installation list | Recommended | Missing |
| MOST/audio DTC state | Recommended | Missing |

## Research constraints

Until evidence is attached:

- do not promote this baseline to `🟢 CONFIRMED`,
- do not derive byte/bit meanings from this profile,
- do not infer Security Access values,
- do not publish dataset addresses/functions as confirmed,
- do not use this baseline as a retrofit instruction.
