# HNAV Recovery Capture Tools

## Tool

```text
read_only_hnav_inventory.sh
```

Purpose:

- capture actual filesystem-visible HNAV identity,
- record `/etc/hwSample`, train, MU version and platform files,
- record HDD geometry/partition table, mounts and free space,
- inventory FSC and persistence locations without copying their contents,
- write the report only to the SD card.

## Safety status

```text
READ-ONLY TARGET ACCESS
SD OUTPUT ONLY
NO CODING/ADAPTATION WRITE
NO SWDL
NO REMOUNT
NO HDD/EEPROM/NOR WRITE
```

## Usage boundary

The script is preparation tooling. Running it is a physical-unit action and must be performed deliberately by the operator. The repository commit does not claim that it has been run on the target unit.

Raw output is private. Store only a reviewed and sanitized derivative in the public repository.

## Third-party basis

The identification and storage paths are informed by the MIT-licensed `variant-dump` implementation in `dspl1236/MMI3G-Toolkit`, reviewed at revision:

```text
7b25fa945e72343474b5f184aa12d0ea06162c8f
```

See `THIRD_PARTY_NOTICES.md`.
