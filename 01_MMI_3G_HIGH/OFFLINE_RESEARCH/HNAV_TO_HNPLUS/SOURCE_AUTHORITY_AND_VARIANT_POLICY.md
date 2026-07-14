# Source Authority and Variant Policy — MMI 3G Research

## Purpose

Define how technical claims about Harman/Becker MMI 3G systems are accepted, rejected or retained as variant-specific research.

This policy applies to BNav, HNav, HN+, HN+R and RNS-850 research in this repository.

## Allowed claim statuses

Every technical claim must use one of these statuses:

- `CONFIRMED`
- `VARIANT`
- `TO VERIFY`
- `HYPOTHESIS`
- `UNKNOWN`
- `BLOCKED`

Do not use `CONFIRMED` when the available evidence applies only to another firmware train, hardware sample, part number or platform family.

## Source hierarchy

Use the following order of authority:

1. direct primary evidence from the exact target unit,
2. applicable Audi, Volkswagen, Harman/Becker or supplier documentation,
3. `DrGER2/MMI3G-Info` as the primary community runtime reference,
4. analysis of a specifically identified firmware image or package,
5. `dspl1236/MMI3G-Toolkit` as an implementation and research reference,
6. forums, comments, catalogues and unattributed community material.

### Conflict rules

- Exact target-unit evidence overrides a community reference.
- Applicable OEM or supplier documentation overrides a community reference.
- `DrGER2/MMI3G-Info` has working precedence over forum claims when both address the same family and variant context.
- Evidence for a different train, hardware sample or part number is `VARIANT`, not target confirmation.
- A firmware-derived observation must identify the package, build, variant/sample and source revision.

## DrGER2/MMI3G-Info role

`DrGER2/MMI3G-Info` is the repository's primary community reference for runtime-visible MMI3G observations, including:

- MMI3GB, MMI3GH and MMI3GP classification,
- running processes,
- mounted filesystems,
- filesystem-visible train, variant and `hwSample`,
- block devices and HDD partition inventory,
- differences in paths and tool availability between product families.

It is not official OEM documentation and is not a complete universal hardware specification.

When citing it, record:

```text
repository: DrGER2/MMI3G-Info
revision or archive version:
script version:
reported MU family:
reported train:
reported variant:
reported hwSample:
evidence type: source-code / runtime report / owner capture
```

## MMI3G-Toolkit role

`dspl1236/MMI3G-Toolkit` is accepted as the preferred reference for:

- automated `copie_scr.sh` launcher encoding,
- SD payload assembly,
- module packaging,
- host-side inspection and research tooling,
- implementation leads that require independent target validation.

Toolkit compatibility declarations do not by themselves confirm target compatibility.

The builder standardizes payload transport. It does not prove:

- that the target launcher exists on every firmware,
- the target SD mount path,
- interpreter availability,
- payload path validity,
- binary-patch applicability,
- safe write or rollback behavior.

## Hardware claim requirements

A hardware claim must state:

```text
MMI family: BNav / HNav / HN+ / HN+R / RNS-850
unit part number:
hardware identifier or board revision:
software train:
MU version:
variant:
hardware sample:
evidence source:
evidence revision/date:
```

Acceptable primary evidence includes:

- boot log,
- runtime report,
- PCB photographs with readable component markings,
- firmware ELF or configuration tied to an exact build,
- unit label and diagnostic identity,
- applicable OEM or supplier documentation.

## Topic-specific rules

### CPU, operating system and endianness

Do not infer the main CPU from NVIDIA graphics or media processes.

CPU, QNX version and endianness are confirmed only for the exact build or unit represented by the evidence.

### Storage and removable media

`devb-umass` indicates USB mass-storage support and is not proof of an SD-card controller.

Record separately:

- physical storage device,
- controller or bus,
- block-device path,
- filesystem type,
- mount point,
- runtime variant.

### Autorun and interpreters

Community evidence supports `copie_scr.sh` on multiple MMI3G variants, but the exact launcher process, interpreter, removable-media path and supported firmware remain variant-specific.

Do not assume `/bin/sh` is a symlink to `/bin/ksh`.

### `metainfo2.txt`

Do not transfer MIB1/MIB2 signing or eligibility rules automatically to MMI 3G.

Record package family, train, variant/sample directories, package hash and the code or log that demonstrates interpretation of a field.

### IFS, LFS and EFS

Always distinguish:

- update image name,
- physical or logical partition,
- filesystem format,
- runtime mount point,
- boot-time role,
- writable and read-only state.

Do not assign one global role to IFS, LFS or EFS across all families.

### UART

UART claims require board revision, physical pin evidence, voltage level, RX/TX/GND identification, baud rate and the boot stage observed.

### HMI, GPH and splash resources

Paths and formats must be verified for the exact train and HMI variant. A toolkit PNG splash-screen module does not confirm `.gph` format support or path compatibility.

## Terminology

Use:

```text
software brick jednostki
```

Do not use:

```text
brick procesora
```

## Safety boundary

The following remain `BLOCKED` until exact variant evidence, immutable backups and a proven rollback path exist:

- firmware or SWDL write experiments,
- HNav-to-HN+ cross-generation writes,
- EEPROM or NOR writes,
- HDD repartition or restore to the vehicle unit,
- EFS or HMI binary replacement,
- region conversion,
- integrity or eligibility bypass,
- FSC signature-bypass deployment.

Documentation of a method does not authorize execution.
