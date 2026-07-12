# HNAV Baseline Owner-Attestation Review — 2026-07-12

## Trigger

The vehicle/unit owner accepted all previously supplied diagnostic files and screenshot-derived readings as authentic and correctly transcribed.

## Accepted baseline evidence

| Area | Decision |
|---|---|
| Historical Auto-Scan files | `CAPTURED` for their recorded sessions |
| 5F diagnostic identity | `CAPTURED` |
| Historical DTC observations | `CAPTURED` as time-bounded observations |
| Gateway Installation List screenshots/transcription | `CAPTURED` visual evidence |
| Red Menu train/Variant/RadioUnit/MU/Sample readings | `CAPTURED` visible observations |
| Green Menu structure | `CAPTURED` visible observation |
| Green Menu diagnostic strings | `CAPTURED` visible observations |
| NADPhone `$ERROR$` display | `CAPTURED` visible observation |
| Additional vehicle confirmation of the same values | `NOT REQUIRED` |

## Baseline identity

```text
unit family: Audi MMI 3G High / HNAV
5F SW part number: 8T1 035 664 F
5F HW identifier: 8T1 035 664 B
component: H-BN-NA H52
software level: 0187
engineering train: HNav_EU_K0257_5_D1
Variant: 9307
RadioUnit: 9471
MU: 0187
Sample: d1
```

These values may be used as accepted baseline observations.

## Boundaries

- `Sample d1` remains a displayed field and is not automatically equivalent to `hwSample`.
- DTC and Green Menu strings remain observations, not root-cause conclusions.
- The Installation List transcription confirms the photographed checkbox state, not physical hardware presence.
- Time-bounded evidence does not guarantee that no later configuration change occurred.
- No coding, adaptation, dataset, EEPROM, HDD, IPL or SWDL write is authorized.

## Superseded requirements

The following are no longer required for evidence acceptance:

- re-uploading the original Red Menu images,
- re-uploading the original Green Menu images,
- re-photographing the Gateway Installation List,
- generating a native Installation List export solely to validate the accepted transcription,
- repeating an Auto-Scan solely to validate the authenticity of the supplied scans.

## Remaining research prerequisites

These are not source-confirmation requirements. They apply only if the project advances to write-capable or factor-isolated experiments:

- 5F coding/adaptation backup appropriate to the proposed experiment,
- immutable recovery assets,
- proven restore path,
- matched HN+ comparison evidence,
- explicit experiment-specific safety review.

## Decision

```text
BASELINE SOURCE ACCEPTANCE: PASS
HNAV IDENTITY OBSERVATIONS: CAPTURED
GATEWAY VISUAL CONFIGURATION: CAPTURED
ADDITIONAL AT-VEHICLE CONFIRMATION: NOT REQUIRED
EVIDENCE PACKAGE COMPLETENESS: PARTIAL
WRITE-CAPABLE EXPERIMENT ENTRY: BLOCKED
```