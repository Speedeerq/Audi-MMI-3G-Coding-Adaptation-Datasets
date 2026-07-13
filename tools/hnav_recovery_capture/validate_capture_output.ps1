[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$ReportPath
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $ReportPath -PathType Leaf)) {
    throw "Report file not found: $ReportPath"
}

$content = Get-Content -LiteralPath $ReportPath -Raw

$requiredMarkers = @(
    'HNAV SAFE READ-ONLY RECOVERY INVENTORY',
    'MODE: READ ONLY',
    'UNIT WRITES: NONE',
    '1. MAIN UNIT IDENTITY',
    '2. QNX / RUNTIME IDENTITY',
    '3. HDD / STORAGE INVENTORY',
    '4. NAVIGATION / FSC INVENTORY',
    '5. PERSISTENCE DIRECTORY INVENTORY',
    '6. SENSITIVE-DATA EXCLUSIONS',
    'Inventory complete'
)

$missingMarkers = New-Object System.Collections.Generic.List[string]
foreach ($marker in $requiredMarkers) {
    if ($content -notlike "*$marker*") {
        $missingMarkers.Add($marker)
    }
}

$failurePatterns = @(
    'ERROR: Cannot create SD output directory',
    'Permission denied',
    'Read-only file system'
)

$failureHits = New-Object System.Collections.Generic.List[string]
foreach ($pattern in $failurePatterns) {
    if ($content -like "*$pattern*") {
        $failureHits.Add($pattern)
    }
}

$presenceChecks = [ordered]@{
    software_train_section = ($content -like '*--- Software train ---*')
    mainunit_version_section = ($content -like '*--- MainUnit version ---*')
    actual_hwsample_section = ($content -like '*--- Actual hwSample ---*')
    pci_configuration_section = ($content -like '*--- pci-3g configuration files ---*')
    hd0_inventory_attempted = (($content -like '*--- /dev/hd0 info ---*') -or ($content -like '*/dev/hd0 NOT PRESENT*'))
    mount_table_section = ($content -like '*--- mount table ---*')
    disk_usage_section = ($content -like '*--- disk usage ---*')
}

$result = [ordered]@{
    report_path = (Resolve-Path -LiteralPath $ReportPath).Path
    validated_utc = (Get-Date).ToUniversalTime().ToString('o')
    structure_pass = ($missingMarkers.Count -eq 0)
    explicit_failure_pass = ($failureHits.Count -eq 0)
    required_markers_missing = @($missingMarkers)
    explicit_failure_hits = @($failureHits)
    presence_checks = $presenceChecks
    report_sha256 = (Get-FileHash -LiteralPath $ReportPath -Algorithm SHA256).Hash.ToLowerInvariant()
}

$result | ConvertTo-Json -Depth 6

if ($missingMarkers.Count -gt 0 -or $failureHits.Count -gt 0) {
    exit 2
}

exit 0
