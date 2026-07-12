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

| Field | Recorded project-note value | Status |
|---|---|---|
| Unit part number | `8T1 035 664 F` | `PARTIAL` |
| System | Audi MMI 3G High / HNAV | `PARTIAL` |
| Active software train | `HNav_EU_K0257_5_D1` | `PARTIAL` |
| Variant | `9307` | `PARTIAL` |
| RadioUnit | `9471` | `PARTIAL` |
| MU version | `0187` | `PARTIAL` |
| Sample | `d1` | `PARTIAL` |

Source intake:

```text
evidence/intake/MMI3GHIGH_HNAV_BASELINE_001/
```

The identity values are not confirmed because raw controller, Red Menu and Auto-Scan evidence is not attached.

## Research files

| File | Purpose |
|---|---|
| `HYPOTHESIS_MATRIX.md` | Separates each possible barrier and defines evidence needed to support or reject it |
| `EXPERIMENT_MATRIX.md` | Orders read-only analysis and later controlled experiments by risk and dependency |
| `FIELD_CAPTURE_HANDOFF.md` | Defines the exact evidence package required from the physical unit |

## Evidence model

The project must keep these concepts separate:

- **observation** — what a tool, file, menu or device visibly reports,
- **interpretation** — what the observation may mean,
- **hypothesis** — a proposed barrier location,
- **experiment result** — evidence from a controlled comparison,
- **technical claim** — a conclusion eligible for review only after corroboration and rollback evidence.

No single firmware filename, UI field, EEPROM byte, partition name or package check is sufficient on its own.

## Entry boundary

At the current evidence state, only the following work is allowed:

- read-only controller and menu capture,
- private immutable backups,
- board and storage inventory,
- offline file and metadata comparison,
- checksum and provenance recording,
- hypothesis and experiment planning.

The following remain blocked:

- HN+ firmware write attempts,
- EEPROM edits,
- IPL or bootloader replacement,
- HDD repartitioning,
- package-signature or eligibility bypass,
- emergency-update experiments,
- dataset or parameterization writes,
- any claim that the conversion is possible or impossible.

## Current decision

```text
RESEARCH PLANNING: READY FOR REVIEW
CONTROLLED EXPERIMENT ENTRY: BLOCKED PENDING FIELD EVIDENCE AND RECOVERY BASELINE
TECHNICAL CLAIM PROMOTION: BLOCKED
```
