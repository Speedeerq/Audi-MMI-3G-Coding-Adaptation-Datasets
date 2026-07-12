# Public Source Intake Review — Recovery / HN+ — 2026-07-12

## Sources reviewed

### 1. MMI3G-Toolkit

```text
repository: dspl1236/MMI3G-Toolkit
reviewed revision: 7b25fa945e72343474b5f184aa12d0ea06162c8f
licence: MIT
```

Useful reviewed material:

- `modules/variant-dump/` — read-only train, actual `hwSample`, region, HDD and persistence inventory,
- `modules/persistence-dump/` — private persistence snapshot,
- `research/FIRMWARE_UPDATE_FORMAT.md` — HN+ MU package, `metainfo2` and image-layout research,
- `docs/SUPPORTED_VEHICLES.md` — platform and variant-class mapping.

### Approved use

```text
READ-ONLY IDENTIFICATION
PRIVATE RECOVERY CAPTURE
OFFLINE STRUCTURE/METADATA RESEARCH
SOURCE-CODE ADAPTATION UNDER MIT LICENCE
```

### Restricted or excluded use

The repository also contains functionality unrelated to safe recovery readiness, including firmware modification, integrity-bypass, activation-bypass, credential collection and persistent modification modules.

This project does not import, endorse or authorize those paths.

In particular, the full `system-info` script is not approved unmodified because it reads or copies data such as:

- VIN content,
- Wi-Fi or Audi Connect credentials,
- Bluetooth identifiers/keys,
- `/etc/passwd` and `/etc/shadow`,
- activation and private key material.

The local recovery script therefore implements a reduced non-secret inventory profile.

### 2. GNU ddrescue

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

### 3. Secondary MMI firmware catalogue

A secondary public catalogue was used only to identify update-media leads, including the EU HN+ AU3G K0942 lead `8R0906961FC` for A4/A5/Q5/Q7.

Classification:

```text
SEARCH LEAD ONLY
NOT PACKAGE PROVENANCE
NOT COMPATIBILITY AUTHORIZATION
```

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
| Owner-supplied diagnostic files | direct evidence | time-bounded and not full flash rollback |
| MMI3G-Toolkit source code | primary public technical source | community project; code must be audited per module |
| GNU ddrescue manual | authoritative tool documentation | does not define MMI-specific restore compatibility |
| Secondary firmware catalogue | lead only | package contents and applicability not verified |

## Decision

```text
PUBLIC SOURCE INTAKE: ACCEPTED FOR RESEARCH
READ-ONLY TOOL ADAPTATION: ALLOWED WITH ATTRIBUTION
RAW THIRD-PARTY FIRMWARE INGESTION: NOT PERFORMED
BYPASS/MODIFICATION MODULES: EXCLUDED
WRITE AUTHORIZATION: NO
```
