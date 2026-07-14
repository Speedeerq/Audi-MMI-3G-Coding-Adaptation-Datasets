# Safe Read-Only HNAV Dump Profile

## Purpose

Define a proposed minimum filesystem-visible data set for recovery planning and HNAV/HN+ comparison without collecting credentials or intentionally writing to target filesystems.

Tool candidate:

```text
tools/hnav_recovery_capture/read_only_hnav_inventory.sh
```

## Current status

```text
HOST-SIDE SCRIPT PACKAGING: PASS
HOST-SIDE COLLECTION/VALIDATION: PASS
TARGET-SIDE INTERPRETER: TO VERIFY
TARGET-SIDE COMMAND AVAILABILITY: TO VERIFY
TARGET SD MOUNT/EXECUTION PATH: TO VERIFY
PHYSICAL TARGET EXECUTION: BLOCKED PENDING VARIANT VALIDATION
```

The script has not been proven compatible with target unit `8T1 035 664 F` running `HNav_EU_K0257_5_D1`.

## Proposed data collection

When supported by the exact target build, the script attempts to record:

- software train from `/dev/shmem/sw_trainname.txt`,
- MU software version,
- actual `/etc/hwSample`,
- detected `pci-3g` configuration file/variant ID,
- HMI type and region when present,
- QNX/kernel identity,
- HDD model/geometry/partition table where visible,
- mount table and disk usage,
- FSC directory filenames and sizes only,
- top-level persistence directory inventory,
- checksums of selected non-secret identity/config files.

Every path and command above is `TO VERIFY` for the target until confirmed by target evidence or an exact matching source.

## Data deliberately excluded

- VIN content,
- registration data,
- coding values,
- adaptation values,
- Wi-Fi SSIDs/passwords,
- Audi Connect credentials/tokens,
- Bluetooth keys/pairing databases,
- `/etc/passwd`,
- `/etc/shadow`,
- private keys,
- FSC file contents,
- persistence file contents,
- any target filesystem remount or intended target write.

## Static write analysis

Static review shows that the script directs its report to the user-supplied removable-media path:

```text
<SDPATH>/var/hnav-recovery/<timestamp>/
```

It does not intentionally:

- write to `/HBpersistence`,
- write to `/mnt/efs-system`,
- write to `/mnt/efs-persist`,
- write to `/mnt/nav`,
- call SWDL,
- change coding or adaptation,
- remount filesystems,
- erase, restore or repartition the HDD.

This static result does not prove that `SDPATH` resolves to removable media on the target. That execution path must be established without guessing.

## Target compatibility gate

Before physical execution, record and review:

```text
family: HNav / MMI 3G High
unit part number: 8T1 035 664 F
hardware identifier: 8T1 035 664 B
train: HNav_EU_K0257_5_D1
variant: 9307
actual hwSample: TO CAPTURE
launcher process: TO VERIFY
launcher script path: TO VERIFY
script interpreter: TO VERIFY
SD controller: TO VERIFY
SD mount path: TO VERIFY
required commands: TO VERIFY
output path resolved to removable media: TO VERIFY
```

No `copie_scr.sh`, emergency-update package, SWDL package or persistent launcher may be substituted merely to bypass this gate.

## Output classification

```text
PRIVATE RAW CAPTURE
```

Before repository intake:

1. retain the raw folder privately,
2. calculate SHA-256 on a workstation,
3. make a working copy,
4. remove identifiers or paths not needed for the public summary,
5. record provenance and tool revision,
6. commit only a sanitized report.

## External-source decisions

| Tool/module | Decision |
|---|---|
| DrGER2/MMI3G-Info | Primary community runtime and family-difference reference |
| MMI3G-Toolkit builder/encoder | Accepted host-side payload transport reference |
| MMI3G-Toolkit `variant-dump` | Read-only implementation reference; target compatibility still reviewed separately |
| MMI3G-Toolkit `persistence-dump` | Private-only, additional review before execution |
| Full credential-oriented information modules | Rejected unmodified because of privacy scope |
| Firmware patch/repack/CRC-bypass modules | Excluded from recovery capture |
| FSC/nav activation bypass modules | Excluded |

## Acceptance criteria

A future physical capture is valid only when:

```text
target execution prerequisites reviewed: YES
launcher and interpreter confirmed for exact target: YES
SD output path confirmed as removable media: YES
report created on SD: YES
unit flash writes: NONE
actual hwSample readable: YES/NO recorded
HDD partition table readable: YES/NO recorded
unsupported commands and failures retained in report: YES
source script SHA/revision recorded: YES
raw output private: YES
sanitized summary reviewed separately: YES
```

A host-side structural PASS does not satisfy the target compatibility gate.
