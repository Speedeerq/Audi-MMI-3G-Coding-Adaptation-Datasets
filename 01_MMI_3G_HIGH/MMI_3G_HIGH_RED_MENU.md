# MMI 3G High — Red Engineering Menu Research

## Purpose

This file documents Audi MMI 3G High Red Engineering Menu observations.

The Red Engineering Menu is primarily used for identifying system information and engineering/update context. Any operational function must be treated with caution.

## Rules

| Rule | Requirement |
|---|---|
| Use Red Menu first for identification | Required |
| Record SW train/version | Required |
| Record MU/SW/version fields exactly as displayed | Required |
| Do not execute update/engineering actions blindly | Required |
| Treat unknown actions as `⚫ UNKNOWN` | Required |
| Photograph or transcribe evidence | Required |

## System identification template

```markdown
## Red Menu identification — <Vehicle/System>

| Field | Value |
|---|---|
| Date |  |
| Vehicle |  |
| Market |  |
| Controller address |  |
| Part number |  |
| HW version |  |
| SW train |  |
| MU/SW version |  |
| Region |  |
| Navigation database |  |
| Map version |  |
| Notes |  |
| Evidence |  |
| Status | ⚫ UNKNOWN |
```

## Menu entry template

```markdown
## Red Menu path — UNKNOWN

| Field | Value |
|---|---|
| Menu path | UNKNOWN |
| Label | UNKNOWN |
| Known behavior | UNKNOWN |
| Observed effect | Not tested |
| Dependencies | UNKNOWN |
| Risk | HIGH until classified |
| Rollback | UNKNOWN |
| Status | ⚫ UNKNOWN |
| Tested on | Not tested |
| Controller part number | UNKNOWN |
| Software version | UNKNOWN |
| Market | UNKNOWN |
| Vehicle | UNKNOWN |
| Evidence | None |
| Notes |  |
```

## Identification intake table

| ID | Vehicle | Controller | Part number | SW train | MU/SW | Market | Evidence | Status |
|---|---|---|---|---|---|---|---|---|
| HIGH-RM-ID-001 | TBD | TBD | TBD | TBD | TBD | TBD | None | ⚫ UNKNOWN |

## Red Menu risk areas

| Area | Default risk | Notes |
|---|---|---|
| Version display | LOW | Read-only identification |
| SWDL/update information | HIGH/CRITICAL | Do not execute without recovery path |
| Boot/update actions | CRITICAL | Research-only |
| Internal diagnostics | HIGH | Requires controlled test plan |
| Dataset/region-related view | HIGH/CRITICAL | Backup/source required before action |

## Open questions

| ID | Question | Status |
|---|---|---|
| HIGH-RM-Q001 | Which Red Menu fields uniquely identify MMI 3G High variants? | ⚫ UNKNOWN |
| HIGH-RM-Q002 | Which SW train patterns correlate with coding/adaptation behavior? | ⚫ UNKNOWN |
| HIGH-RM-Q003 | Which Red Menu items are read-only and safe to document? | ⚫ UNKNOWN |
| HIGH-RM-Q004 | Which Red Menu actions must be classified as no-touch/critical? | ⚫ UNKNOWN |
