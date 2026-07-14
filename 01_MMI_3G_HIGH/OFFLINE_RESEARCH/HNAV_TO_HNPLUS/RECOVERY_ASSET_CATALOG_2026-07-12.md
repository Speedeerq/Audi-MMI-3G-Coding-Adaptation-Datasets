# HNAV Recovery Asset Catalog — 2026-07-12

Updated by the variant-aware hardware/source audit on 2026-07-14.

## Scope

This catalog separates:

- evidence already supplied by the unit owner,
- host-side preparation tooling,
- target-side script candidates that still require compatibility review,
- assets that still have to be captured from the target unit,
- assets that must come from the exact original firmware package,
- assets that require bench access.

It does not authorize a write operation or physical target execution.

## A. Owner-supplied assets already available

| Asset | Current state | Use | Limitation |
|---|---|---|---|
| Multiple VCDS Auto-Scans | `CAPTURED / PRIVATE` | diagnostic identity, DTC history, subsystem inventory | time-bounded; not a flash rollback |
| Historical 5F coding values contained in scans | `CAPTURED / PRIVATE` | coding-history comparison | a fresh same-session value is still required before a future write |
| Gateway coding backup | `CAPTURED / PRIVATE` | J533 rollback reference | does not restore 5F flash/storage |
| Gateway Installation List screenshots and transcription | `CAPTURED` | network configuration comparison | checkbox state is not proof of physical hardware |
| Gateway adaptation map | `CAPTURED / PRIVATE` | J533 adaptation reference | 5F adaptation map is not present |
| Gateway module map | `CAPTURED / PRIVATE` | network topology context | not equivalent to Optical Bus Diagnostics |
| Red Menu readings | `CAPTURED` | train/variant/MU visible-state reference | displayed `Sample d1` is not proven `/etc/hwSample` |
| Green Menu readings | `CAPTURED` | visible UI/diagnostic-state reference | no root-cause proof |

## B. Public references and preparation tooling

### B1. Runtime-family reference

Primary community reference:

```text
DrGER2/MMI3G-Info
reviewed revision: 2d6f0e419cfd22c7daf3b38fac0418c99a0e0de0
reviewed script version: v260103
```

Accepted use:

- MMI3GB/MMI3GH/MMI3GP handling differences,
- runtime process and mount references,
- filesystem-visible train, variant and `hwSample` reporting design,
- HDD and partition-inventory reference.

Limitation:

```text
COMMUNITY SOURCE — NOT OEM DOCUMENTATION
VARIANT-SPECIFIC
TARGET EVIDENCE REMAINS REQUIRED
```

### B2. SD builder and inventory implementation reference

```text
dspl1236/MMI3G-Toolkit
reviewed revision: 7b25fa945e72343474b5f184aa12d0ea06162c8f
licence: MIT
```

Accepted host-side roles:

- automated SD payload assembly,
- `copie_scr.sh` launcher encoding,
- module packaging,
- implementation reference for read-only inventory design,
- offline firmware and metadata research.

The reviewed `variant-dump` design attempts to read:

- software train,
- MU software version,
- `/etc/hwSample`,
- platform/variant configuration,
- HMI type and region where present,
- QNX/kernel identity,
- HDD geometry and partition table,
- mounts and free space,
- navigation database information,
- FSC file presence,
- persistence directory inventory.

Repository-local reduced script candidate:

```text
tools/hnav_recovery_capture/read_only_hnav_inventory.sh
```

The local profile deliberately excludes credentials, VIN content, passwords, private keys and coding values.

Status split:

```text
HOST-SIDE STAGING/COLLECTION/VALIDATION: PASS
TARGET-SIDE LAUNCHER/INTERPRETER/PATH COMPATIBILITY: TO VERIFY
PHYSICAL TARGET EXECUTION: BLOCKED PENDING VARIANT VALIDATION
```

### B3. Persistence snapshot

A reviewed public `persistence-dump` design can copy state from paths such as:

```text
/HBpersistence
/mnt/efs-persist
/dev/shmem
/mnt/persistence
```

Use classification:

```text
PRIVATE RECOVERY ASSET ONLY
PATHS: VARIANT / TO VERIFY
DO NOT COMMIT RAW OUTPUT
SANITIZATION REQUIRED BEFORE ANY SUMMARY IS PUBLISHED
EXECUTION REQUIRES SEPARATE REVIEW
```

Persistence may contain identifiers, activation data, pairing data and other sensitive state.

### B4. HDD imaging

Accepted tool class:

```text
GNU ddrescue with a persistent mapfile
```

Required result set:

```text
hnav-hdd.raw
hnav-hdd.map
hnav-hdd.raw.sha256
source-device-identification.txt
read-error-summary.txt
partition-table-before.txt
```

Rules:

- image the removed or bench-connected source disk as a block device,
- do not image a mounted read/write filesystem,
- keep the mapfile with the image,
- calculate and retain SHA-256 after acquisition,
- create a second verified copy before any restore or edit,
- never write the only recovery image back to the source disk.

## C. Recovery assets located as public reference material

### C1. HN+ firmware structure reference

A public research source documents an HN+ AU3G package with:

```text
package reference: 8R0906961FE
release: HN+_US_AU3G_K0942_6
main unit payload: MU9498
```

Documented component classes include:

```text
ipl
fpga
fpga-emg
ifs-emg
ifs-root
efs-extended
efs-system
efs-persist
peripheral sub-component firmware
metainfo2.txt
preUpdateScript / postUpdateScript / finalScript
```

Classification:

```text
BUILD-SPECIFIC SOFTWARE-LAYOUT REFERENCE
NOT GLOBAL HN+ HARDWARE EVIDENCE
NOT A RECOVERY PACKAGE FOR TARGET HNAV
NOT AUTHORIZED FOR TARGET WRITE
```

### C2. HN+ hardware-sample directory reference

A public HN+ package analysis maps payload directories such as:

```text
31 = C1
41 = D1
51 = E1
61 = F1
62 = F2
```

These values are package target variants. They do not prove the target HNAV unit's `/etc/hwSample` or a global HN+ architecture.

### C3. EU HN+ package lead

Secondary catalogue material identifies:

```text
8R0906961FC
HN+ EU K0942
A4 / A5 / Q5 / Q7 AU3G family
```

Classification:

```text
CATALOGUE LEAD ONLY
PACKAGE NOT ACQUIRED
HASH/CONTENTS NOT VERIFIED
NOT A RECOVERY ASSET
```

## D. Assets still missing from the target HNAV unit

| Required asset | State | Why required |
|---|---|---|
| Read-only `/etc/hwSample` capture | `BLOCKED PENDING EXECUTION-PATH REVIEW` | distinguishes displayed Sample from actual hardware-sample file |
| QNX train/MU/variant inventory from filesystem | `BLOCKED PENDING EXECUTION-PATH REVIEW` | corroborates Red Menu and package eligibility context |
| Target CPU/QNX/endianness evidence | `TO VERIFY` | prevents transfer of another build's architecture |
| Target SD controller, launcher, interpreter and mount path | `TO VERIFY` | required before any SD payload execution |
| HDD geometry and partition table | `TO CAPTURE AFTER SAFE METHOD APPROVAL` | enables HNAV/HN+ layout comparison |
| Full target HDD image + mapfile + hashes | `TO CAPTURE ON BENCH` | storage rollback and forensic comparison |
| Sanitized/private persistence snapshot | `TO CAPTURE AFTER SCRIPT REVIEW` | configuration rollback/diff support |
| Full current 5F adaptation map | `TO CAPTURE IF WRITE PROPOSED` | adaptation rollback |
| Exact original HNAV K0257 firmware package | `NOT LOCATED` | same-train emergency/firmware recovery source |
| Original HNAV package `metainfo2.txt` | `NOT LOCATED` | target eligibility/layout comparison |
| Original HNAV IPL/IFS/FPGA/emergency images | `NOT LOCATED` | NOR recovery and HN+/HNAV comparison |
| Target EEPROM image | `TO CAPTURE ON BENCH` | identity/configuration rollback |
| Target NOR flash image | `TO CAPTURE ON BENCH` | full flash rollback beyond package-level recovery |
| Proven restore test on spare/bench unit | `BLOCKED` | validates that backups are operational rather than archival only |

## E. EEPROM/NOR acceptance requirements

An EEPROM or NOR backup is accepted only when all conditions are met:

1. exact board and chip are photographed and identified,
2. programmer, adapter, voltage and mode are recorded,
3. at least two independent reads are byte-identical,
4. SHA-256 is stored for every accepted image,
5. source image is made immutable/read-only,
6. a separate working copy is used for analysis,
7. restore is tested on bench or an equivalent spare before relying on it for a vehicle write.

## Decision

```text
EXISTING DIAGNOSTIC/CONFIG EVIDENCE: AVAILABLE
HOST-SIDE STAGING/COLLECTION TOOLING: PASS
TARGET-SIDE INVENTORY COMPATIBILITY: TO VERIFY
TARGET PHYSICAL EXECUTION: BLOCKED PENDING VARIANT VALIDATION
HDD/EEPROM/NOR ROLLBACK ASSETS: NOT YET CAPTURED
EXACT TARGET SAME-TRAIN RECOVERY PACKAGE: NOT LOCATED
RECOVERY READINESS: PARTIAL / NOT PROVEN
WRITE ENTRY: BLOCKED
```
