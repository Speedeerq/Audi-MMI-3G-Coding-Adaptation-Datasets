# Prior-Chat Screenshot Recovery — Red Menu and Green Menu

## Status notice — owner attestation

On 2026-07-12 the vehicle/unit owner confirmed that the previously supplied screenshots are authentic and that the extracted readings in this record are accurate.

The observations listed below are therefore accepted as `CAPTURED`. Re-upload or re-capture is not required for evidence acceptance.

The attestation is recorded in:

```text
evidence/intake/MMI3GHIGH_HNAV_BASELINE_001/OWNER_SOURCE_ATTESTATION_2026-07-12.md
```

## Evidence class

```text
SOURCE CLASS: OWNER-SUPPLIED SCREENSHOTS / PRIOR-CONVERSATION RECOVERY
ORIGINAL IMAGE COPIED TO PUBLIC REPOSITORY: NO
OWNER PROVENANCE ATTESTATION: YES
SANITIZED TRANSCRIPTION: YES
OBSERVATION STATUS: CAPTURED
```

## Accepted identity readings

| Field | Accepted reading | Status | Boundary |
|---|---|---|---|
| MMI family | Audi MMI 3G High / HNAV | `CAPTURED` | Owner-attested visible identification |
| Software train | `HNav_EU_K0257_5_D1` | `CAPTURED` | Confirms displayed train string |
| Variant | `9307` | `CAPTURED` | Confirms displayed value |
| RadioUnit | `9471` | `CAPTURED` | Confirms displayed value |
| MU version | `0187` | `CAPTURED` | Also consistent with diagnostic metadata |
| Sample | `d1` | `CAPTURED` | Does not prove equivalence to `hwSample` |

## Accepted Green Menu structure

```text
main
└── diagnose
    ├── pml
    └── settings
```

The `settings` view contained:

```text
AMI/AUX
Microphones
Displays
Tel settings
HDD Nav DB
```

The same captured state did not show:

```text
coding
carmenuoperation
cardevicelist
car_function_list
```

This confirms visibility in the captured state only. It does not prove permanent absence or functional availability in every software/configuration state.

## Accepted Green Menu diagnostic observations

```text
0x3ff60e / CONTROL_UNIT_HDD_D
0xc5500 / FUNCTION_RESTRICTION
```

The strings are accepted as displayed observations. Their root cause, affected partition, recovery method and relationship to HNAV-to-HN+ barriers remain unconfirmed.

## Accepted NADPhone observation

```text
NADPhone version column: $ERROR$
```

The displayed value is accepted. It does not prove the cause, module presence, configuration state or telephone functionality.

## Independent diagnostic corroboration

The supplied Auto-Scan evidence is consistent with part of the screen context:

```text
5F software part number: 8T1 035 664 F
5F hardware part number: 8T1 035 664 B
Component: H-BN-NA H52 0187
Navigation database: 8R0 060 884 KL / EUR 2023 3600
Display: 8R0 919 604 / DU7 High H41 0104
Control panel: 8T0 919 609 G / E0380 Bedient H08 0100
CD database: 8R0 060 961 A / 2712
```

## Excluded ambiguous material

The following values remain excluded because the recovered context does not establish that they belong to the same unit state or screenshot sequence:

```text
HNav_US_K0133_3_D1
IOC U654
8R0 906 961 CP
```

The owner attestation does not silently associate these ambiguous values with the accepted HNAV baseline.

## Decision

```text
OWNER-SUPPLIED SCREENSHOT PROVENANCE: ACCEPTED
RED MENU READINGS: CAPTURED
GREEN MENU STRUCTURE: CAPTURED
GREEN MENU DISPLAY STRINGS: CAPTURED
RE-CAPTURE FOR THESE OBSERVATIONS: NOT REQUIRED
ROOT-CAUSE INTERPRETATION: NOT PROMOTED
WRITE-CAPABLE EXPERIMENT ENTRY: BLOCKED
```