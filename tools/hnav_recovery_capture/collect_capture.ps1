[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern('^[A-Za-z]:\\?$')]
    [string]$SdRoot,

    [string]$PackageName = 'HNAV_RECOVERY_CAPTURE',

    [string]$DestinationRoot = (Join-Path $env:USERPROFILE 'Documents\HNAV-Recovery-Captures')
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$sdRootPath = [System.IO.Path]::GetFullPath($SdRoot)
if (-not (Test-Path -LiteralPath $sdRootPath -PathType Container)) {
    throw "SD root does not exist: $sdRootPath"
}

$packageRoot = Join-Path $sdRootPath $PackageName
$captureRoot = Join-Path $packageRoot 'var\hnav-recovery'

if (-not (Test-Path -LiteralPath $packageRoot -PathType Container)) {
    throw "Package directory not found: $packageRoot"
}

if (-not (Test-Path -LiteralPath $captureRoot -PathType Container)) {
    throw "No capture directory found: $captureRoot"
}

$captureDirectories = @(Get-ChildItem -LiteralPath $captureRoot -Directory | Sort-Object Name)
if ($captureDirectories.Count -eq 0) {
    throw "No timestamped capture directories found under: $captureRoot"
}

New-Item -ItemType Directory -Path $DestinationRoot -Force | Out-Null
$collectionStamp = Get-Date -Format 'yyyyMMdd-HHmmss'
$destination = Join-Path $DestinationRoot "HNAV_CAPTURE_$collectionStamp"
if (Test-Path -LiteralPath $destination) {
    throw "Destination already exists: $destination"
}
New-Item -ItemType Directory -Path $destination | Out-Null

$copiedPackageMeta = Join-Path $destination 'package'
$copiedCaptures = Join-Path $destination 'captures'
New-Item -ItemType Directory -Path $copiedPackageMeta | Out-Null
New-Item -ItemType Directory -Path $copiedCaptures | Out-Null

foreach ($fileName in @('PACKAGE_METADATA.json', 'PACKAGE_README.txt', 'SHA256SUMS.txt', 'SESSION_NOTES.md')) {
    $sourceFile = Join-Path $packageRoot $fileName
    if (Test-Path -LiteralPath $sourceFile -PathType Leaf) {
        Copy-Item -LiteralPath $sourceFile -Destination $copiedPackageMeta
    }
}

foreach ($captureDirectory in $captureDirectories) {
    Copy-Item -LiteralPath $captureDirectory.FullName -Destination $copiedCaptures -Recurse
}

$manifestRows = Get-ChildItem -LiteralPath $destination -File -Recurse |
    Sort-Object FullName |
    ForEach-Object {
        [ordered]@{
            relative_path = $_.FullName.Substring($destination.Length + 1)
            size_bytes = $_.Length
            sha256 = (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash.ToLowerInvariant()
        }
    }

$collectionManifest = [ordered]@{
    collection_created_utc = (Get-Date).ToUniversalTime().ToString('o')
    source_sd_root = $sdRootPath
    source_package = $PackageName
    capture_directories = @($captureDirectories.Name)
    files = @($manifestRows)
}

$collectionManifest | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath (Join-Path $destination 'COLLECTION_MANIFEST.json') -Encoding UTF8

$privacyPatterns = [ordered]@{
    possible_vin = '\b[A-HJ-NPR-Z0-9]{17}\b'
    credential_keyword = '(?i)\b(password|passwd|shadow|ssid|psk|token|secret|private[ -]?key)\b'
    email_address = '(?i)\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b'
}

$privacyHits = New-Object System.Collections.Generic.List[string]
$textFiles = Get-ChildItem -LiteralPath $destination -File -Recurse | Where-Object {
    $_.Extension -in @('.txt', '.log', '.md', '.json')
}

foreach ($textFile in $textFiles) {
    foreach ($patternName in $privacyPatterns.Keys) {
        $matches = Select-String -LiteralPath $textFile.FullName -Pattern $privacyPatterns[$patternName] -AllMatches -ErrorAction SilentlyContinue
        foreach ($match in $matches) {
            $relative = $textFile.FullName.Substring($destination.Length + 1)
            $privacyHits.Add("$patternName`t$relative`tline $($match.LineNumber)")
        }
    }
}

$privacyReport = Join-Path $destination 'PRIVACY_SCAN.txt'
@(
    'HNAV CAPTURE PRIVACY SCAN',
    "generated_utc: $((Get-Date).ToUniversalTime().ToString('o'))",
    'classification: ADVISORY ONLY',
    'raw capture classification: PRIVATE',
    ''
) | Set-Content -LiteralPath $privacyReport -Encoding UTF8

if ($privacyHits.Count -eq 0) {
    'No configured privacy-pattern matches found.' | Add-Content -LiteralPath $privacyReport -Encoding UTF8
} else {
    'Configured privacy-pattern matches require manual review:' | Add-Content -LiteralPath $privacyReport -Encoding UTF8
    $privacyHits | Add-Content -LiteralPath $privacyReport -Encoding UTF8
}

Write-Host "Capture copied to: $destination"
Write-Host "Capture directories copied: $($captureDirectories.Count)"
Write-Host "Privacy-pattern matches: $($privacyHits.Count)"
Write-Host 'The SD card was not modified or cleaned by this script.'
