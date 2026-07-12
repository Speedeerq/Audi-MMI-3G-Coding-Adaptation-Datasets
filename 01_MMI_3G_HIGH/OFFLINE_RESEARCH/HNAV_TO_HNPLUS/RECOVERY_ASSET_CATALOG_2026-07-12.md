# HNAV Recovery Asset Catalog — 2026-07-12

## Scope

This catalog separates:

- evidence already supplied by the unit owner,
- read-only recovery tools located in public sources,
- assets that still have to be captured from the target unit,
- assets that must come from the exact original firmware package,
- assets that require bench access.

It does not authorize a write operation.

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

## B. Public read-only tooling accepted for preparation

### B1. Variant and storage inventory

Source class:

```text
dspl1236/MMI3G-Toolkit
reviewed revision: 7b25fa945e72343474b5f184aa12d0ea06162c8f
licence: MIT
```

The reviewed `variant-dump` design reads:

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

It writes the report to the SD card and does not install to flash.

Repository-local reduced profile:

```text
tools/hnav_recovery_capture/read_only_hnav_inventory.sh
```

The local profile deliberately excludes credentials, VIN content, passwords, private keys and coding values.

### B2. Persistence snapshot

The reviewed public `persistence-dump` script can copy state from:

```text
/HBpersistence
/mnt/efs-persist
/dev/shmem
/mnt/persistence
```

Use classification:

```text
PRIVATE RECOVERY ASSET ONLY
DO NOT COMMIT RAW OUTPUT
SANITIZATION REQUIRED BEFORE ANY SUMMARY IS PUBLISHED
```

Reason: persistence can contain identifiers, activation data, pairing data and other sensitive state.

### B3. HDD imaging

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

This is a software-layout reference. It is not a recovery package for the target HNAV unit and must never be flashed to it on the basis of this catalog.

### C2. HN+ hardware-sample directory reference

The public HN+ package analysis maps payload directories such as:

```text
31 = C1
41 = D1
51 = E1
61 = F1
62 = F2
```

These values are package target variants. They do not prove the target HNAV unit's `/etc/hwSample`.

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
| Read-only `/etc/hwSample` capture | `TO_CAPTURE` | distinguishes displayed Sample from actual hardware-sample file |
| QNX train/MU/variant inventory from filesystem | `TO_CAPTURE` | corroborates Red Menu and package eligibility context |
| HDD geometry and partition table | `TO_CAPTURE` | enables HNAV/HN+ layout comparison |
| Full target HDD image + mapfile + hashes | `TO_CAPTURE` | storage rollback and forensic comparison |
| Sanitized/private persistence snapshot | `TO_CAPTURE` | configuration rollback/diff support |
| Full current 5F adaptation map | `TO_CAPTURE IF WRITE PROPOSED` | adaptation rollback |
| Exact original HNAV K0257 firmware package | `NOT LOCATED` | same-train emergency/firmware recovery source |
| Original HNAV package `metainfo2.txt` | `NOT LOCATED` | target eligibility/layout comparison |
| Original HNAV IPL/IFS/FPGA/emergency images | `NOT LOCATED` | NOR recovery and HN+/HNAV comparison |
| Target EEPROM image | `TO_CAPTURE ON BENCH` | identity/configuration rollback |
| Target NOR flash image | `TO_CAPTURE ON BENCH` | full flash rollback beyond package-level recovery |
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
READ-ONLY INVENTORY TOOLING: READY
HDD/EEPROM/NOR ROLLBACK ASSETS: NOT YET CAPTURED
EXACT TARGET SAME-TRAIN RECOVERY PACKAGE: NOT LOCATED
RECOVERY READINESS: PARTIAL / NOT PROVEN
WRITE ENTRY: BLOCKED
```
