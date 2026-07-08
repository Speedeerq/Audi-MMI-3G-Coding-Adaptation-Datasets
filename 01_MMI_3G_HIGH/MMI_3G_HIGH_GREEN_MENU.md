# MMI 3G High — Green Menu Research

## Purpose

This file documents Audi MMI 3G High Green Menu observations and tests.

Green Menu entries must not be treated as safe only because they are visible.

## Rules

| Rule | Requirement |
|---|---|
| Unknown options stay unknown | `⚫ UNKNOWN` |
| Do not test destructive/update/boot options casually | Required |
| Record menu path exactly | Required |
| Record visible state before/after | Required |
| Record DTC before/after | Required |
| Rollback must be documented | Required |

## Menu entry template

```markdown
## Green Menu path — UNKNOWN

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

## Menu inventory

| ID | Menu path | Label | Area | Risk | Status | Evidence |
|---|---|---|---|---|---|---|
| HIGH-GM-001 | TBD | TBD | TBD | HIGH | ⚫ UNKNOWN | None |

## Risk classification by menu area

| Area | Default risk | Notes |
|---|---|---|
| Display/UI | LOW/MEDIUM | Still requires rollback |
| CAR menu visibility | MEDIUM/HIGH | May depend on gateway/BCM/camera/park assist |
| Audio/MOST | HIGH | May affect amplifier/source behavior |
| Diagnosis/internal services | HIGH/CRITICAL | Do not test blindly |
| SWDL/update/boot | CRITICAL | Recovery path required |
| Dataset/parameterization | CRITICAL | Backup and source required |

## Test procedure

| Step | Action |
|---:|---|
| 1 | Save Auto-Scan |
| 2 | Record MMI SW train/version |
| 3 | Photograph menu path before change |
| 4 | Change only one option |
| 5 | Observe immediate effect |
| 6 | Reboot MMI if relevant |
| 7 | Ignition cycle if relevant |
| 8 | Re-scan DTC |
| 9 | Rollback |
| 10 | Confirm original behavior |

## Open questions

| ID | Question | Status |
|---|---|---|
| HIGH-GM-Q001 | Which Green Menu entries are UI-only? | ⚫ UNKNOWN |
| HIGH-GM-Q002 | Which entries affect MOST/audio routing? | ⚫ UNKNOWN |
| HIGH-GM-Q003 | Which entries affect CAR menu visibility? | ⚫ UNKNOWN |
| HIGH-GM-Q004 | Which entries should be classified as critical/no-touch? | ⚫ UNKNOWN |
