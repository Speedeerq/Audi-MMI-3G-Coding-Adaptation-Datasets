[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern('^[A-Za-z]:\\?$')]
    [string]$SdRoot,

    [string]$PackageName = 'HNAV_RECOVERY_CAPTURE'
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$sdRootPath = [System.IO.Path]::GetFullPath($SdRoot)
if (-not (Test-Path -LiteralPath $sdRootPath -PathType Container)) {
    throw "SD root does not exist: $sdRootPath"
}

$driveRoot = [System.IO.Path]::GetPathRoot($sdRootPath).TrimEnd('\')
$driveLetter = $driveRoot.TrimEnd(':')
$volume = Get-Volume -DriveLetter $driveLetter -ErrorAction SilentlyContinue
if ($null -ne $volume -and $volume.DriveType -ne 'Removable') {
    Write-Warning "Windows reports drive $driveRoot as '$($volume.DriveType)', not Removable. Verify the destination manually before continuing."
}

$sourceScript = Join-Path $PSScriptRoot 'read_only_hnav_inventory.sh'
$sessionTemplate = Join-Path $PSScriptRoot 'SESSION_NOTES_TEMPLATE.md'
$workflowDocument = Join-Path $PSScriptRoot 'SD_PACKAGE_WORKFLOW.md'

foreach ($requiredFile in @($sourceScript, $sessionTemplate, $workflowDocument)) {
    if (-not (Test-Path -LiteralPath $requiredFile -PathType Leaf)) {
        throw "Required source file is missing: $requiredFile"
    }
}

$packageRoot = Join-Path $sdRootPath $PackageName
if (Test-Path -LiteralPath $packageRoot) {
    throw "Package directory already exists and will not be overwritten: $packageRoot"
}

New-Item -ItemType Directory -Path $packageRoot | Out-Null

$targetScript = Join-Path $packageRoot 'read_only_hnav_inventory.sh'
$scriptText = [System.IO.File]::ReadAllText($sourceScript)
$scriptText = $scriptText -replace "`r`n", "`n"
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($targetScript, $scriptText, $utf8NoBom)

Copy-Item -LiteralPath $sessionTemplate -Destination (Join-Path $packageRoot 'SESSION_NOTES.md')
Copy-Item -LiteralPath $workflowDocument -Destination (Join-Path $packageRoot 'SD_PACKAGE_WORKFLOW.md')

$metadata = [ordered]@{
    package_name = $PackageName
    created_utc = (Get-Date).ToUniversalTime().ToString('o')
    source_repository = 'Speedeerq/Audi-MMI-3G-Coding-Adaptation-Datasets'
    source_script = 'tools/hnav_recovery_capture/read_only_hnav_inventory.sh'
    execution_mode = 'manual-gated'
    autorun_included = $false
    target_unit_write_commands = $false
    output_scope = 'SD card package directory only'
}

$metadata | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath (Join-Path $packageRoot 'PACKAGE_METADATA.json') -Encoding UTF8

$readme = @'
HNAV RECOVERY CAPTURE PACKAGE

MODE: MANUAL-GATED READ ONLY
AUTORUN: NOT INCLUDED
TARGET UNIT WRITES: NONE IN THE INVENTORY SCRIPT
OUTPUT: THIS SD PACKAGE DIRECTORY ONLY

Do not rename, edit, or execute the script until the execution path has been reviewed for the exact unit state.
Complete SESSION_NOTES.md before and after the capture.
Keep all raw results private until sanitization review is complete.
'@
$readme | Set-Content -LiteralPath (Join-Path $packageRoot 'PACKAGE_README.txt') -Encoding UTF8

$hashLines = Get-ChildItem -LiteralPath $packageRoot -File |
    Where-Object { $_.Name -ne 'SHA256SUMS.txt' } |
    Sort-Object Name |
    ForEach-Object {
        $hash = (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash.ToLowerInvariant()
        '{0} *{1}' -f $hash, $_.Name
    }

$hashLines | Set-Content -LiteralPath (Join-Path $packageRoot 'SHA256SUMS.txt') -Encoding ASCII

Write-Host "Package created: $packageRoot"
Write-Host 'No files were deleted, no drive was formatted, and no autorun mechanism was created.'
Write-Host 'Verify SHA256SUMS.txt before transferring the card to the vehicle.'
