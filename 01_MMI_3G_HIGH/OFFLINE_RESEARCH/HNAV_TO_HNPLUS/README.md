# HNAV → HN+ Barrier Research

## Research question

Determine whether the HNAV-to-HN+ barrier is primarily located in:

1. physical hardware,
2. `hwSample` or equivalent variant identity,
3. EEPROM identity/configuration,
4. HDD partition layout or filesystem content,
5. update-package metadata and `metainfo2.txt` eligibility logic,
6. IPL/bootloader capability or acceptance logic,
7. an interaction between multiple layers.

## Current unit context

| Field | Accepted reading | Evidence state |
|---|---|---|
| Unit part number | `8T1 035 664 F` | `CAPTURED` diagnostic identity |
| Hardware identifier | `8T1 035 664 B` | `CAPTURED` diagnostic identity |
| System | Audi MMI 3G High / HNAV | `CAPTURED` |
| Active software train | `HNav_EU_K0257_5_D1` | `CAPTURED` owner-attested visible reading |
| Variant | `9307` | `CAPTURED` owner-attested visible reading |
| RadioUnit | `9471` | `CAPTURED` owner-attested visible reading |
| MU version | `0187` | `CAPTURED` |
| Sample | `d1` | `CAPTURED` visible reading; not proven equivalent to `/etc/hwSample` |

Source intake:

```text
evidence/intake/MMI3GHIGH_HNAV_BASELINE_001/
```

## Research files

| File | Purpose |
|---|---|
| `HYPOTHESIS_MATRIX.md` | Separates each possible barrier and defines evidence needed to support or reject it |
| `EXPERIMENT_MATRIX.md` | Orders read-only analysis and later controlled experiments by risk and dependency |
| `FIELD_CAPTURE_HANDOFF.md` | Defines the original evidence-capture handoff |
| `RECOVERY_ASSET_CATALOG_2026-07-12.md` | Catalogues existing, public-source and missing recovery assets |
| `HNPLUS_REFERENCE_SELECTION_2026-07-12.md` | Defines the correct HN+ comparison class and donor acceptance rules |
| `HNPLUS_REFERENCE_INTAKE_TEMPLATE.md` | Template for a future physical HN+ reference package |
| `WRITE_OPERATION_BACKUP_MATRIX_2026-07-12.md` | Defines mandatory backups for each proposed write operation |
| `PUBLIC_SOURCE_INTAKE_REVIEW_2026-07-12.md` | Reviews external tools and sources, including safety and licence boundaries |
| `SAFE_READ_ONLY_DUMP_PROFILE.md` | Defines the approved read-only recovery inventory profile |
| `EXPERIMENT_ENTRY_GATE_REASSESSMENT_RECOVERY_RESEARCH_2026-07-12.md` | Reassesses X1–X7 after the source search |

Supporting tool:

```text
tools/hnav_recovery_capture/read_only_hnav_inventory.sh
```

## Evidence model

The project keeps these concepts separate:

- **observation** — what a tool, file, menu or device reports,
- **interpretation** — what the observation may mean,
- **hypothesis** — a proposed barrier location,
- **experiment result** — evidence from a controlled comparison,
- **technical claim** — a conclusion eligible for review only after corroboration and rollback evidence.

No single firmware filename, UI field, EEPROM byte, partition name or package check is sufficient on its own.

## Entry boundary

Allowed:

- read-only controller and menu capture,
- private immutable backups,
- board and storage inventory,
- offline file and metadata comparison,
- checksum and provenance recording,
- preparation of a matched HN+ reference package.

Blocked:

- HN+ firmware write attempts,
- EEPROM edits,
- IPL or bootloader replacement,
- HDD repartitioning or restoration to the vehicle unit,
- update eligibility or integrity bypass,
- emergency-update experiments,
- dataset or parameterization writes,
- any claim that the conversion is possible or impossible.

## Current decision

```text
X0 BASELINE EVIDENCE: PASS
X1 RECOVERY TOOLING/CATALOG: PARTIAL READY
X2 HN+ SOFTWARE REFERENCE CLASS: IDENTIFIED
X2 MATCHED PHYSICAL HN+ DATASET: MISSING
CONTROLLED WRITE EXPERIMENT ENTRY: BLOCKED
TECHNICAL CLAIM PROMOTION: BLOCKED
```
