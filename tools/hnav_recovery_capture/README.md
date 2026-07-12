# HNAV Recovery Capture Tools

## Included files

```text
read_only_hnav_inventory.sh
prepare_sd_package.ps1
collect_capture.ps1
validate_capture_output.ps1
SESSION_NOTES_TEMPLATE.md
SD_PACKAGE_WORKFLOW.md
LOCAL_TOOLING_DRY_RUN.md
THIRD_PARTY_NOTICES.md
```

## Target-side inventory tool

`read_only_hnav_inventory.sh` is designed to:

- capture filesystem-visible HNAV identity,
- record `/etc/hwSample`, train, MU version and platform files,
- record HDD geometry/partition table, mounts and free space,
- inventory FSC and persistence locations without copying their contents,
- write the report only below the supplied SD-card package path.

## Windows staging and collection tools

### `prepare_sd_package.ps1`

Creates a new `HNAV_RECOVERY_CAPTURE` directory on a manually verified SD-card drive. It:

- refuses to overwrite an existing package,
- does not format or erase the card,
- normalizes the QNX script to LF line endings,
- copies session/workflow documentation,
- creates package metadata and SHA-256 hashes,
- does not create an autorun mechanism.

### `collect_capture.ps1`

Copies completed timestamped capture folders from the SD card into a new private directory under the user's Documents folder. It:

- does not remove or modify SD-card data,
- creates a SHA-256 collection manifest,
- performs an advisory privacy-pattern scan,
- retains raw output as private evidence.

### `validate_capture_output.ps1`

Performs structural validation of a collected report. It verifies expected headings and explicit failure markers, then emits a JSON validation summary and SHA-256 hash.

A structural PASS does not prove that every target command produced complete data; the report still requires technical review.

## Safety status

```text
READ-ONLY TARGET ACCESS
SD OUTPUT ONLY
NO CODING/ADAPTATION WRITE
NO SWDL
NO REMOUNT
NO HDD/EEPROM/NOR WRITE
NO AUTORUN INCLUDED
NO SD FORMAT OR ERASE
```

## Local dry run before real media

Before using a real SD card, complete:

```text
LOCAL_TOOLING_DRY_RUN.md
```

The procedure validates:

- PowerShell parser compatibility,
- package staging on an isolated temporary drive,
- preservation of a pre-existing sentinel file,
- refusal to overwrite an existing package,
- synthetic report validation,
- private result collection,
- absence of destructive storage commands.

## Staging example

From the repository root in PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\hnav_recovery_capture\prepare_sd_package.ps1 -SdRoot X:\
```

Replace `X:` only after confirming the SD-card drive letter.

## Execution boundary

The package intentionally does not include `copie_scr.sh`, a firmware update package, an emergency-update path or any persistent launcher.

Running the QNX inventory script is a physical-unit action and must be performed deliberately after the exact execution path and SD mount point are reviewed. The repository does not claim the tool has been executed on the target unit.

See `SD_PACKAGE_WORKFLOW.md` and complete `SESSION_NOTES_TEMPLATE.md`.

## Data handling

Raw output is private. Store only a reviewed and sanitized derivative in the public repository.

Do not publish:

- raw identifiers,
- credentials or pairing material,
- FSC contents,
- private keys,
- customer data,
- unreviewed persistence or storage dumps.

## Third-party basis

The identification and storage paths are informed by the MIT-licensed `variant-dump` implementation in `dspl1236/MMI3G-Toolkit`, reviewed at revision:

```text
7b25fa945e72343474b5f184aa12d0ea06162c8f
```

See `THIRD_PARTY_NOTICES.md`.
