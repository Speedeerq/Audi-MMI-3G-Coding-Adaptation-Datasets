# Local PowerShell Tooling Dry Run

## Objective

Validate the Windows-side staging, collection and report-validation tools without using a real SD card or connecting to the vehicle.

The dry run uses a temporary directory mapped to a temporary drive letter with `subst`.

## 1. Parse all PowerShell files without executing them

Run from the repository root:

```powershell
$Scripts = @(
    '.\tools\hnav_recovery_capture\prepare_sd_package.ps1',
    '.\tools\hnav_recovery_capture\collect_capture.ps1',
    '.\tools\hnav_recovery_capture\validate_capture_output.ps1'
)

$AllErrors = @()
foreach ($Script in $Scripts) {
    $Tokens = $null
    $Errors = $null
    [System.Management.Automation.Language.Parser]::ParseFile(
        (Resolve-Path $Script),
        [ref]$Tokens,
        [ref]$Errors
    ) | Out-Null

    if ($Errors.Count -eq 0) {
        Write-Host "PASS  $Script"
    } else {
        Write-Host "FAIL  $Script"
        $Errors | Format-List
        $AllErrors += $Errors
    }
}

Write-Host "Parser errors: $($AllErrors.Count)"
```

Expected:

```text
PASS ...prepare_sd_package.ps1
PASS ...collect_capture.ps1
PASS ...validate_capture_output.ps1
Parser errors: 0
```

## 2. Create an isolated fake SD drive

Choose a currently unused drive letter. The example uses `R:`.

```powershell
$DryRunRoot = Join-Path $env:TEMP 'HNAV_SD_DRY_RUN'
New-Item -ItemType Directory -Path $DryRunRoot -Force | Out-Null
Set-Content -Path (Join-Path $DryRunRoot 'DO_NOT_DELETE_SENTINEL.txt') -Value 'existing file must survive'

subst R: $DryRunRoot
Get-ChildItem R:\
```

Do not continue if `R:` was already in use before the `subst` command.

## 3. Stage the package

```powershell
powershell -ExecutionPolicy Bypass -File `
  .\tools\hnav_recovery_capture\prepare_sd_package.ps1 `
  -SdRoot R:\
```

Expected:

```text
R:\DO_NOT_DELETE_SENTINEL.txt                      remains present
R:\HNAV_RECOVERY_CAPTURE\                         created
R:\HNAV_RECOVERY_CAPTURE\SHA256SUMS.txt           created
R:\HNAV_RECOVERY_CAPTURE\read_only_hnav_inventory.sh created
```

Verify:

```powershell
Test-Path R:\DO_NOT_DELETE_SENTINEL.txt
Get-ChildItem R:\HNAV_RECOVERY_CAPTURE\ -File
```

Expected sentinel result: `True`.

A second staging attempt must fail rather than overwrite the package:

```powershell
powershell -ExecutionPolicy Bypass -File `
  .\tools\hnav_recovery_capture\prepare_sd_package.ps1 `
  -SdRoot R:\
```

Expected: an error stating that the package directory already exists.

## 4. Create a synthetic target report

```powershell
$CaptureDir = 'R:\HNAV_RECOVERY_CAPTURE\var\hnav-recovery\dry-run-001'
New-Item -ItemType Directory -Path $CaptureDir -Force | Out-Null

@'
################################################################
# HNAV SAFE READ-ONLY RECOVERY INVENTORY
################################################################
MODE: READ ONLY
UNIT WRITES: NONE
1. MAIN UNIT IDENTITY
--- Software train ---
HNav_TEST
--- MainUnit version ---
TEST
--- Actual hwSample ---
d1
--- pci-3g configuration files ---
/etc/pci-3g_9308.cfg
2. QNX / RUNTIME IDENTITY
3. HDD / STORAGE INVENTORY
--- /dev/hd0 info ---
synthetic
--- mount table ---
synthetic
--- disk usage ---
synthetic
4. NAVIGATION / FSC INVENTORY
5. PERSISTENCE DIRECTORY INVENTORY
6. SENSITIVE-DATA EXCLUSIONS
Inventory complete
'@ | Set-Content -Path (Join-Path $CaptureDir 'hnav-read-only-inventory.txt') -Encoding UTF8
```

## 5. Validate the synthetic report

```powershell
powershell -ExecutionPolicy Bypass -File `
  .\tools\hnav_recovery_capture\validate_capture_output.ps1 `
  -ReportPath (Join-Path $CaptureDir 'hnav-read-only-inventory.txt')

Write-Host "Exit code: $LASTEXITCODE"
```

Expected:

```text
structure_pass: true
explicit_failure_pass: true
Exit code: 0
```

## 6. Test private collection

```powershell
$CollectionRoot = Join-Path $env:TEMP 'HNAV_COLLECTION_DRY_RUN'

powershell -ExecutionPolicy Bypass -File `
  .\tools\hnav_recovery_capture\collect_capture.ps1 `
  -SdRoot R:\ `
  -DestinationRoot $CollectionRoot

Get-ChildItem $CollectionRoot -Recurse
```

Expected inside the new timestamped collection directory:

```text
package/
captures/
COLLECTION_MANIFEST.json
PRIVACY_SCAN.txt
```

The source fake-SD files and sentinel must still exist.

## 7. Static destructive-command scan

```powershell
$ToolScripts = Get-ChildItem .\tools\hnav_recovery_capture\*.ps1
$ToolScripts | Select-String -Pattern `
  '\b(Format-Volume|Clear-Disk|Initialize-Disk|Remove-Item|del|erase|diskpart)\b'
```

Expected: no matches.

## 8. Cleanup the fake drive

Run only after verifying that `R:` is the temporary mapping created in this procedure:

```powershell
subst R: /D
Remove-Item -LiteralPath $DryRunRoot -Recurse -Force
Remove-Item -LiteralPath $CollectionRoot -Recurse -Force
```

Cleanup affects only the explicitly created temporary directories.

## Acceptance decision

```text
POWERSHELL PARSER: PASS REQUIRED
SENTINEL PRESERVATION: PASS REQUIRED
SECOND-STAGE OVERWRITE REFUSAL: PASS REQUIRED
SYNTHETIC REPORT VALIDATION: PASS REQUIRED
PRIVATE COLLECTION: PASS REQUIRED
DESTRUCTIVE-COMMAND SCAN: ZERO MATCHES REQUIRED
REAL SD / VEHICLE EXECUTION: NOT PART OF THIS DRY RUN
```
