# Public Source Intake Review — Recovery / HN+ — 2026-07-12

Updated by the variant-aware source audit on 2026-07-14.

## Sources reviewed

### 1. DrGER2/MMI3G-Info

```text
repository: DrGER2/MMI3G-Info
reviewed revision: 2d6f0e419cfd22c7daf3b38fac0418c99a0e0de0
reviewed script version: v260103
source class: primary community runtime reference
OEM status: not official OEM documentation
```

Useful reviewed material:

- explicit `MMI3GB`, `MMI3GH` and `MMI3GP` handling,
- train, MU version, variant and `/etc/hwSample` reporting,
- HDD identity and partition-table reporting,
- running-process and mounted-filesystem inventory,
- product-family-specific path and tool handling.

Approved use:

```text
PRIMARY COMMUNITY RUNTIME REFERENCE
VARIANT-AWARE PATH AND PROCESS REFERENCE
READ-ONLY TARGET REPORTING REFERENCE
CORROBORATION OF OWNER CAPTURES
```

Limitations:

- community source, not Audi/Harman OEM documentation,
- a result from one unit or report does not prove all variants,
- raw reports may contain identifiers or sensitive runtime state,
- target-unit evidence and applicable OEM documentation remain higher authority.

### 2. MMI3G-Toolkit

```text
repository: dspl1236/MMI3G-Toolkit
reviewed revision: 7b25fa945e72343474b5f184aa12d0ea06162c8f
licence: MIT
source class: implementation and research reference
```

Useful reviewed material:

- `builder/` — automated SD payload assembly and `copie_scr.sh` encoding,
- `modules/variant-dump/` — read-only train, actual `hwSample`, region, HDD and persistence inventory,
- `modules/persistence-dump/` — private persistence snapshot candidate,
- `research/FIRMWARE_UPDATE_FORMAT.md` — build-specific HN+ MU package, `metainfo2` and image-layout research,
- `docs/SUPPORTED_VEHICLES.md` — community platform and variant-class mapping,
- host-side tools for offline inspection and firmware research.

Approved use:

```text
HOST-SIDE PAYLOAD BUILDING
LAUNCHER ENCODING
READ-ONLY IDENTIFICATION REFERENCE
PRIVATE RECOVERY CAPTURE DESIGN
OFFLINE STRUCTURE/METADATA RESEARCH
SOURCE-CODE ADAPTATION UNDER MIT LICENCE
```

The builder standardizes transport. It does not prove target compatibility, mount paths, interpreter availability, binary-patch applicability or rollback safety.

Restricted or excluded use:

The repository also contains functionality unrelated to safe recovery readiness, including firmware modification, integrity-bypass, activation-bypass, credential collection and persistent modification modules.

This project does not import, endorse or authorize those paths.

In particular, the full upstream system-information and credential-oriented modules are not approved unmodified when they read or copy data such as:

- VIN content,
- Wi-Fi or Audi Connect credentials,
- Bluetooth identifiers/keys,
- `/etc/passwd` and `/etc/shadow`,
- activation and private key material.

The repository-local recovery script therefore implements a reduced non-secret inventory profile. Its target-side compatibility remains `TO VERIFY` for the target HNav unit.

### 3. GNU ddrescue

```text
source: official GNU ddrescue manual
reviewed manual version: 1.30
manual date: 2026-01-01
licence class: GNU free documentation / GNU software
```

Accepted use:

- whole-device imaging,
- mapfile-controlled resumable acquisition,
- read-error accounting,
- generation of an immutable raw HDD recovery image.

Important safety rules retained from the official manual:

- do not rescue a read/write-mounted partition,
- do not attempt filesystem repair on a failing source before imaging,
- use a mapfile,
- verify input/output device identity,
- keep source and destination roles unambiguous.

### 4. Secondary MMI firmware catalogue

A secondary public catalogue was used only to identify update-media leads, including the EU HN+ AU3G K0942 lead `8R0906961FC` for A4/A5/Q5/Q7.

Classification:

```text
SEARCH LEAD ONLY
NOT PACKAGE PROVENANCE
NOT COMPATIBILITY AUTHORIZATION
```

## Conflict policy

Use `SOURCE_AUTHORITY_AND_VARIANT_POLICY.md`.

Working rule:

```text
exact target-unit evidence > applicable OEM/supplier documentation
> DrGER2/MMI3G-Info > build-specific firmware analysis
> MMI3G-Toolkit implementation claims > forums/catalogues
```

A lower-ranked source may still expose a useful lead, but it cannot promote a claim beyond the evidence supplied.

## Public/proprietary boundary

No proprietary Audi firmware binary, EEPROM image, HDD image, FSC file or customer dump is copied by this source intake.

Permitted repository content:

- source references,
- licence notices,
- sanitized metadata,
- hashes of privately held evidence,
- read-only capture tooling,
- comparison schemas and acceptance criteria.

Private-only content:

- raw Auto-Scans containing identifiers,
- coding/adaptation exports before sanitization,
- persistence/FSC data,
- HDD/EEPROM/NOR images,
- exact customer or donor identifiers,
- proprietary firmware packages.

## Evidence quality

| Source | Quality for this project | Limitation |
|---|---|---|
| Exact target-unit logs, images and diagnostic files | direct primary evidence | time-bounded; may still require corroboration and recovery proof |
| Applicable OEM/Harman/supplier documentation | authoritative when scope matches | applicability must match the exact family and revision |
| DrGER2/MMI3G-Info | primary community runtime reference | community project; results remain variant-specific |
| Build-specific firmware image analysis | primary technical evidence for that image | does not prove another train or physical board |
| MMI3G-Toolkit source code | implementation and research reference | code and compatibility claims must be audited per module and target |
| GNU ddrescue manual | authoritative tool documentation | does not define MMI-specific restore compatibility |
| Forums and secondary catalogues | lead only | provenance and applicability may be unverified |

## Decision

```text
PUBLIC SOURCE INTAKE: ACCEPTED FOR RESEARCH
DrGER2 RUNTIME REFERENCE: PRIMARY COMMUNITY SOURCE
DrGER2 OEM STATUS: NOT OFFICIAL
MMI3G-TOOLKIT BUILDER/ENCODER ROLE: ACCEPTED
READ-ONLY TOOL ADAPTATION: ALLOWED WITH ATTRIBUTION
TARGET-SIDE COMPATIBILITY: TO VERIFY
RAW THIRD-PARTY FIRMWARE INGESTION: NOT PERFORMED
BYPASS/MODIFICATION MODULES: EXCLUDED
WRITE AUTHORIZATION: NO
```
