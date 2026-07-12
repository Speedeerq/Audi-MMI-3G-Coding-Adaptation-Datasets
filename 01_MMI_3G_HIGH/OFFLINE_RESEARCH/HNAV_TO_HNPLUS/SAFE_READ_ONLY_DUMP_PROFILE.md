# Safe Read-Only HNAV Dump Profile

## Purpose

Collect the minimum filesystem-visible data needed to advance recovery planning and HNAV/HN+ comparison without writing to the unit or collecting credentials.

Tool:

```text
tools/hnav_recovery_capture/read_only_hnav_inventory.sh
```

## Data collected

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
- any write or mount-remount command.

## Write analysis

The script performs filesystem writes only to the user-provided SD-card output directory:

```text
<SDPATH>/var/hnav-recovery/<timestamp>/
```

It does not:

- write to `/HBpersistence`,
- write to `/mnt/efs-system`,
- write to `/mnt/efs-persist`,
- write to `/mnt/nav`,
- call SWDL,
- change coding or adaptation,
- remount filesystems,
- erase, restore or repartition the HDD.

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

## External-tool decisions

| Tool/module | Decision |
|---|---|
| MMI3G-Toolkit `variant-dump` | Approved read-only reference |
| MMI3G-Toolkit `persistence-dump` | Private-only, additional review before execution |
| MMI3G-Toolkit full `system-info` | Rejected unmodified because it collects credentials/secrets |
| Firmware patch/repack/CRC-bypass modules | Excluded from recovery capture |
| FSC/nav activation bypass modules | Excluded |

## Acceptance criteria

A capture is valid when:

```text
report created on SD: YES
unit flash writes: NONE
actual hwSample readable: YES/NO recorded
HDD partition table readable: YES/NO recorded
source script SHA/revision recorded: YES
raw output private: YES
sanitized summary reviewed separately: YES
```
