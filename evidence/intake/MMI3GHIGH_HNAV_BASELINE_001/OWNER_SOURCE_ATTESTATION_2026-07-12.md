# Owner Source Attestation — 2026-07-12

## Declaration

The vehicle and evidence owner confirms that the files, diagnostic logs and screenshots previously supplied to the project are authentic records from the target vehicle/unit and that the values transcribed from those materials are accurate.

The owner explicitly confirms that these already supplied materials do not require re-capture, re-export or another vehicle session for evidence acceptance.

## Accepted source classes

```text
OWNER-SUPPLIED DIAGNOSTIC FILES: ACCEPTED
OWNER-SUPPLIED SCREENSHOTS/PHOTOS: ACCEPTED
TRANSCRIBED VISIBLE CONTENT: ACCEPTED
PROVENANCE CONFIRMATION: COMPLETE
ADDITIONAL VEHICLE CONFIRMATION FOR THESE ITEMS: NOT REQUIRED
```

## Accepted observations

### Diagnostic files

- historical full Auto-Scan material supplied in EP-001,
- sanitized Auto-Scan summary and extract for the 2026-05-12 session,
- time-bounded DTC observations extracted from supplied scans,
- Gateway identification, map and related read-only evidence present in the supplied evidence package.

### Gateway Installation List screenshots

The owner accepts the complete transcription reconstructed from the three supplied VCDS screenshot pages covering addresses `01` through `8C`.

The transcription is accepted as captured visual evidence of the checkbox states visible in that photographed session. A native text export is not required to validate the transcription.

### Red Engineering Menu

The owner accepts these visible/transcribed readings:

```text
MMI family: Audi MMI 3G High / HNAV
software train: HNav_EU_K0257_5_D1
Variant: 9307
RadioUnit: 9471
MU: 0187
Sample: d1
```

### Green Menu

The owner accepts these visible/transcribed observations:

```text
main/diagnose
├── pml
└── settings
    ├── AMI/AUX
    ├── Microphones
    ├── Displays
    ├── Tel settings
    └── HDD Nav DB
```

The supplied captures also support the visible strings:

```text
0x3ff60e / CONTROL_UNIT_HDD_D
0xc5500 / FUNCTION_RESTRICTION
NADPhone version: $ERROR$
```

## Status effect

The listed source observations may be classified as `CAPTURED` and used as accepted E3 owner-supplied evidence.

Prior requirements to re-upload, re-photograph or re-export the same observations are superseded by this attestation.

## Boundaries retained

This attestation confirms source authenticity and transcription accuracy. It does not by itself prove:

- that `Sample d1` is equivalent to `hwSample`,
- the root cause of any displayed diagnostic string or DTC,
- that a photographed Installation List checkbox proves physical module presence,
- that the captured state remained unchanged after its original session,
- coding or adaptation behavior not contained in the supplied evidence,
- rollback readiness or safety of firmware, EEPROM, HDD, dataset or SWDL writes,
- HNAV-to-HN+ conversion feasibility or barrier location.

## Operational safety

No additional vehicle action is required to confirm the accepted evidence items.

A future same-session pre-write backup may still be required as an operational safety control if a write-capable experiment is later proposed. Such a backup would protect rollback capability; it would not be a re-verification of the accepted source evidence.

## Decision

```text
OWNER SOURCE ATTESTATION: ACCEPTED
SUPPLIED FILES: ACCEPTED AS SOURCE EVIDENCE
SUPPLIED SCREENSHOT READINGS: CAPTURED
RE-CAPTURE FOR EVIDENCE CONFIRMATION: NOT REQUIRED
TECHNICAL INTERPRETATION BOUNDARIES: RETAINED
WRITE-CAPABLE EXPERIMENT ENTRY: STILL BLOCKED
```