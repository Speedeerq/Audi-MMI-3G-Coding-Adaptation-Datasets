# HNAV Read-Only SD Package Workflow

## Purpose

Prepare, execute and collect a read-only HNAV identity/storage inventory without formatting the SD card, overwriting an existing package, enabling autorun or writing to the target unit.

## Stage A — prepare the SD package on Windows

1. Insert a known-good FAT32 SD card.
2. Confirm its drive letter manually.
3. Run from the repository root:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\hnav_recovery_capture\prepare_sd_package.ps1 -SdRoot X:\
```

Replace `X:` with the verified SD-card drive.

The staging script:

- creates `X:\HNAV_RECOVERY_CAPTURE\`,
- refuses to overwrite an existing package directory,
- normalizes the QNX shell script to LF line endings,
- creates package metadata and SHA-256 hashes,
- does not format the card,
- does not remove existing files,
- does not create an autorun payload.

## Stage B — verify package integrity

From PowerShell:

```powershell
Get-Content X:\HNAV_RECOVERY_CAPTURE\SHA256SUMS.txt
Get-ChildItem X:\HNAV_RECOVERY_CAPTURE\ -File | Get-FileHash -Algorithm SHA256
```

Record the package creation time and verification result in `SESSION_NOTES.md`.

## Stage C — execution gate

The package deliberately contains no automatic execution mechanism.

Do not execute it until all of the following are true:

```text
exact MMI family confirmed: HNAV / MMI 3G High
script hash matches SHA256SUMS.txt
execution path reviewed for the actual unit
SD mount path resolved without guessing
MMI fully booted before execution
stable voltage available
operator can stop if unexpected behavior occurs
no SWDL/update menu is entered
```

The exact launcher or shell-access method must be reviewed separately. Do not substitute an unreviewed `copie_scr.sh`, emergency-update package, firmware update package or persistent installer.

## Stage D — expected output

The inventory script writes only below the package path supplied to it:

```text
HNAV_RECOVERY_CAPTURE/
└── var/
    └── hnav-recovery/
        └── <timestamp>/
            └── hnav-read-only-inventory.txt
```

The report is private until privacy review and sanitization are complete.

## Stage E — collect results on Windows

After removing the SD card from the vehicle, run:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\hnav_recovery_capture\collect_capture.ps1 -SdRoot X:\
```

The collection script copies the package metadata, session notes and capture folders into a new timestamped private directory under the user's Documents folder. It does not delete or modify the SD contents.

## Stage F — structural validation

Run:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\hnav_recovery_capture\validate_capture_output.ps1 -ReportPath "<copied-report-path>"
```

A structural PASS confirms that the expected report sections exist. It does not prove that every command was supported by the target QNX build or that all expected values were present.

## Prohibited shortcuts

Do not:

- format or repartition the SD card as part of this workflow,
- overwrite an existing capture package,
- add unknown binaries or third-party autorun files,
- execute firmware/SWDL packages to gain shell access,
- remount target filesystems read-write,
- publish raw reports before privacy review,
- treat this inventory as an EEPROM, NOR or full-HDD backup.

## Acceptance boundary

```text
SD STAGING: SAFE TO PREPARE
TARGET EXECUTION: MANUAL GATE REQUIRED
AUTORUN: NOT INCLUDED
TARGET WRITE: NOT AUTHORIZED
RAW OUTPUT: PRIVATE
```
