# HN+ Reference Selection — 2026-07-12

Updated by the variant-aware hardware/source audit on 2026-07-14.

## Objective

Define a software-comparison candidate and the acceptance requirements for a future physical HN+ reference relevant to the target Audi A4 B8 HNAV unit.

A convenient HN+ unit is not automatically a valid reference. Model family, HN+/HN+R class, platform variant, region, hardware sample and firmware package must be recorded separately.

## Target HNAV context

```text
vehicle family: Audi A4 B8 / 8K
unit SW part: 8T1 035 664 F
unit HW identifier: 8T1 035 664 B
family: HNAV
train: HNav_EU_K0257_5_D1
visible variant: 9307
visible MU: 0187
visible Sample: d1
actual /etc/hwSample: not captured
CPU / QNX / endianness: TO VERIFY
```

## Current HN+ software-comparison candidate

Community platform research identifies the following candidate for offline package and integration-context comparison:

```text
family: HN+ AU3G
vehicle group: A4 B8.5 / A5 B8.5 / Q5 8R / Q7 4L
platform variant candidate: 9498
preferred region: EU
preferred firmware family: HN+_EU_AU3G
status: VARIANT / SOFTWARE-COMPARISON CANDIDATE
```

The A4/A5/Q5/Q7 HN+ AU3G branch is preferred as a search and software-comparison candidate because it is associated with the same longitudinal infotainment vehicle group.

This does not confirm that its CPU, board, storage, boot chain or runtime paths match the target HNav unit.

## References explicitly rejected as primary hardware comparator

| Candidate | Decision | Reason |
|---|---|---|
| HN+R from A6/A7/A8/Q3 | Reject as primary comparator | different HN+R train family and platform variant range |
| HN+ A1 variant 9436 | Reject as primary comparator | smaller A1-specific head-unit class |
| VW RNS-850 variants | Reject as primary comparator | different vehicle integration and package branch |
| A8 D4 HN+/HN+R customer unit | Use only as variant-specific context | not the required A4/A5/Q5/Q7 AU3G 9498 candidate |
| Firmware package alone | Insufficient as physical reference | does not provide board, EEPROM, actual HDD or unit-specific state |

## Available software reference

### Reference S-9498-US

```text
source class: public research repository
package: 8R0906961FE
release: HN+_US_AU3G_K0942_6
MU: MU9498
region: USA
reference use: package structure, metainfo fields, image layout, hardware-sample directories
```

Status:

```text
ACCEPTED AS BUILD-SPECIFIC SOFTWARE-STRUCTURE REFERENCE
NOT ACCEPTED AS GLOBAL HN+ HARDWARE REFERENCE
NOT ACCEPTED AS EU PHYSICAL DONOR
NOT AUTHORIZED FOR TARGET WRITE
```

### Reference lead S-9498-EU

```text
package lead: 8R0906961FC
release family: HN+ EU K0942
vehicle class: A4/A5/Q5/Q7
source quality: secondary catalogue
```

Status:

```text
LEAD ONLY
PACKAGE CONTENT AND HASHES NOT VERIFIED
```

## Minimum physical HN+ reference package

A physical donor/reference may enter comparison only when it includes:

### Identity

- vehicle model/platform and model year,
- unit label photographs,
- 5F Auto-Scan/Advanced ID,
- SW and HW part numbers,
- HN+ train,
- MU version,
- platform/variant ID,
- `/etc/hwSample`,
- HMI type and region.

### Hardware

- top and bottom case photographs,
- PCB photographs at sufficient resolution,
- CPU, RAM, flash/NOR and storage controller markings,
- FPGA and MOST-controller markings,
- HDD model/capacity/interface,
- display and control-panel part numbers.

### Storage and firmware

- read-only HDD geometry and partition table,
- mount table and filesystem inventory,
- full HDD image or immutable forensic reference where permission permits,
- persistence inventory/dump,
- exact firmware package identifier,
- `metainfo2.txt`,
- IPL, FPGA, emergency and root/system image inventory,
- hash manifest.

### EEPROM/NOR

- chip identification,
- programmer/read parameters,
- at least two matching reads,
- SHA-256 hashes,
- explicit owner permission and private handling classification.

## Matching grades

| Grade | Definition | Permitted use |
|---|---|---|
| `R0 — catalogue` | model/train/package-name only | search lead only |
| `R1 — software reference` | verified package structure/metainfo | build-specific offline metadata/layout study |
| `R2 — diagnostic unit reference` | Auto-Scan + train + actual hwSample + region | identity and variant comparison |
| `R3 — storage/hardware reference` | R2 + board inventory + HDD layout/image | hardware/storage hypothesis testing |
| `R4 — recovery-complete donor` | R3 + EEPROM/NOR + exact package + proven restore path | candidate for controlled bench research |

## Current result

```text
HN+ AU3G 9498 SOFTWARE-COMPARISON CANDIDATE: IDENTIFIED
SOFTWARE REFERENCE: R1 / BUILD-SPECIFIC
HN+ GLOBAL HARDWARE ARCHITECTURE: VARIANT / TO VERIFY
PHYSICAL HN+ REFERENCE: NOT FOUND IN AVAILABLE USER FILES
MATCHED EU 9498 UNIT DATASET: REQUIRED
X2 HARDWARE COMPARISON: PARTIAL / BLOCKED ABOVE R1
```
