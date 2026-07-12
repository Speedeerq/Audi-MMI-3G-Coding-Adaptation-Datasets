# Prior-Chat Screenshot Recovery — Red Menu and Green Menu

## Purpose

This record recovers read-only observations from earlier conversations in which the unit owner supplied Red Engineering Menu and Green Menu photos.

The original image files are not attached to this repository record. The recovered values therefore remain `PARTIAL` and must not be promoted to confirmed technical claims.

## Evidence class

```text
SOURCE CLASS: PRIOR CONVERSATION / SCREENSHOT INTERPRETATION RECOVERY
ORIGINAL IMAGE ATTACHED: NO
SANITIZED: YES
MAXIMUM CURRENT STATUS: PARTIAL
```

## Recovered identity readings

| Field | Recovered reading | Current status | Boundary |
|---|---|---|---|
| MMI family | Audi MMI 3G High / HNAV | `PARTIAL` | Consistent with project baseline; direct image not attached |
| Software train | `HNav_EU_K0257_5_D1` | `PARTIAL` | Recovered from prior version/engineering-menu discussion |
| Variant | `9307` | `PARTIAL` | Original screenshot not attached |
| RadioUnit | `9471` | `PARTIAL` | Original screenshot not attached |
| MU version | `0187` | `PARTIAL` | Also consistent with sanitized diagnostic metadata available outside this branch |
| Sample | `d1` | `PARTIAL` | Do not treat as proven equivalence to `hwSample` |

## Recovered Green Menu structure

The prior Green Menu photo discussion recorded:

```text
main
└── diagnose
    ├── pml
    └── settings
```

The `settings` view was recorded as containing:

```text
AMI/AUX
Microphones
Displays
Tel settings
HDD Nav DB
```

The same capture did not record the commonly expected entries:

```text
coding
carmenuoperation
cardevicelist
car_function_list
```

Absence from that capture does not prove permanent absence from every configuration or software state.

## Recovered Green Menu diagnostic observations

The prior photo interpretation recorded these visible strings:

```text
0x3ff60e / CONTROL_UNIT_HDD_D
0xc5500 / FUNCTION_RESTRICTION
```

These are display observations only. They do not establish a root cause, affected partition, recovery method or HNAV-to-HN+ barrier location.

## Recovered NADPhone observation

A prior Green Menu screenshot discussion recorded:

```text
NADPhone version column: $ERROR$
```

This does not prove whether a telephone module is installed, reachable, correctly configured or defective.

## Independent diagnostic corroboration located in prior uploads

A prior Auto-Scan upload contains sanitized-useful 5F metadata that is consistent with part of the recovered screen context:

```text
5F software part number: 8T1 035 664 F
5F hardware part number: 8T1 035 664 B
Component: H-BN-NA H52 0187
Navigation database: 8R0 060 884 KL / EUR 2023 3600
Display: 8R0 919 604 / DU7 High H41 0104
Control panel: 8T0 919 609 G / E0380 Bedient H08 0100
CD database: 8R0 060 961 A / 2712
```

The raw Auto-Scan is not copied into this branch because it requires a separate sanitization and provenance review.

## Excluded ambiguous material

The following prior-chat values were not imported into this baseline because the recovered context does not establish that they belong to the same unit state or screenshot sequence:

```text
HNav_US_K0133_3_D1
IOC U654
8R0 906 961 CP
```

They remain outside this evidence package until their original screenshots and unit context are recovered.

## Decision

```text
PRIOR-CHAT SCREENSHOT RECOVERY: USABLE AS PARTIAL NOTE EVIDENCE
ORIGINAL SCREENSHOT CORROBORATION: STILL REQUIRED
TECHNICAL CLAIM PROMOTION: BLOCKED
WRITE-CAPABLE EXPERIMENT ENTRY: BLOCKED
```
