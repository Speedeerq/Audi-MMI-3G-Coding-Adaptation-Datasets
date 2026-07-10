# Local Commands

This document lists local commands for operator-side evidence intake inspection.

These commands are for review preparation. They do not prove technical claims.

## 1. Enter the repository

```powershell
cd "<LOCAL_REPOSITORY_PATH>"
```

Example placeholder meaning:

```text
<LOCAL_REPOSITORY_PATH> = local clone path controlled by the operator
```

Do not commit private local paths into public repository records.

## 2. Fetch remote state

```powershell
git fetch origin
```

## 3. Check current branch

```powershell
git branch --show-current
```

## 4. Check working tree

```powershell
git status --short
```

Expected clean output:

```text

```

If any file is listed, stop and review the change before continuing.

## 5. Inspect recent commits

```powershell
git log --oneline -n 5
```

## 6. Inspect diff stat against main

```powershell
git diff --stat main..HEAD
```

Expected use:

- confirm only intended folders changed
- confirm no protected source folders changed
- confirm the change size is explainable

## 7. Inspect changed file names

```powershell
git diff --name-only main..HEAD
```

Expected use:

- confirm all files are in the intended stage folder
- confirm no schema, template, release, log, backup or dataset folder changed unless explicitly approved

## 8. Search for public safety terms

```powershell
$phrases = @(
  "CONFIRMED",
  "VERIFIED",
  "release-ready",
  "release readiness",
  "VIN",
  "WAU",
  "Security Access",
  "Login",
  "coding",
  "adaptation",
  "dataset",
  "SWDL",
  "C:\Users",
  "OneDrive",
  "http"
)

foreach ($phrase in $phrases) {
  Write-Host "`n--- $phrase ---"
  Select-String -Path "docs/evidence_intake_execution/*","validation/evidence_intake/*" -Pattern $phrase -SimpleMatch -CaseSensitive |
    ForEach-Object {
      "{0}:{1}: {2}" -f $_.Path, $_.LineNumber, $_.Line
    }
}
```

## 9. JSON syntax check example

Use this only for JSON intake files.

```powershell
Get-ChildItem -Path "REVIEW_WORKING_FOLDER" -Filter "*.json" | ForEach-Object {
  try {
    Get-Content $_.FullName -Raw | ConvertFrom-Json | Out-Null
    Write-Host "JSON_SYNTAX_OK $($_.FullName)"
  }
  catch {
    Write-Host "JSON_SYNTAX_ERROR $($_.FullName)"
    Write-Host $_.Exception.Message
  }
}
```

## 10. CSV structure check example

Use this only for CSV intake files.

```powershell
Get-ChildItem -Path "REVIEW_WORKING_FOLDER" -Filter "*.csv" | ForEach-Object {
  $rows = Import-Csv $_.FullName
  Write-Host "CSV_READ_OK $($_.FullName) rows=$($rows.Count)"
}
```

## Command boundary

Passing these local commands means the intake package is prepared for review.

It does not mean the evidence claim is accepted or technically proven.
