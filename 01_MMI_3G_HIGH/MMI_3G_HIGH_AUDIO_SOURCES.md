# MMI 3G High — Audio Sources / MOST Research

## Purpose

This file documents Audi MMI 3G High audio source behavior and dependencies.

Audio behavior can depend on MMI coding, adaptation, Green Menu settings, MOST topology, amplifier configuration and installed equipment.

## Rules

| Rule | Requirement |
|---|---|
| Do not assume source availability from menu visibility | Required |
| Record audio system type | Required |
| Record MOST-related DTC | Required |
| Record amplifier/module dependencies | Required |
| Test one source/function at a time | Required |
| Rollback must restore original source behavior | Required |

## Audio context checklist

| Field | Required | Value |
|---|---:|---|
| Vehicle | Yes | TBD |
| Market | Yes | TBD |
| MMI system | Yes | MMI 3G High |
| Controller address | Yes | TBD |
| MMI part number | Yes | TBD |
| MMI SW version | Yes | TBD |
| Audio system | Yes | UNKNOWN |
| Amplifier present | Yes | UNKNOWN |
| MOST ring status | Recommended | UNKNOWN |
| DTC before | Yes | TBD |
| DTC after | Yes | TBD |

## Audio source entry template

```markdown
## Audio source — UNKNOWN

| Field | Value |
|---|---|
| Source/function | UNKNOWN |
| Visible in menu | UNKNOWN |
| Functional output | UNKNOWN |
| Required equipment | UNKNOWN |
| Related coding | UNKNOWN |
| Related adaptation | UNKNOWN |
| Related Green Menu path | UNKNOWN |
| Related modules | UNKNOWN |
| Observed effect | Not tested |
| Risk | MEDIUM until classified |
| Rollback | Restore original coding/adaptation/menu state and re-scan |
| Status | ⚫ UNKNOWN |
| Evidence | None |
```

## Source inventory

This table will be populated only from evidence.

| ID | Source/function | Visible? | Works? | Required equipment | Dependencies | Status | Evidence |
|---|---|---|---|---|---|---|---|
| HIGH-AUDIO-001 | TBD | UNKNOWN | UNKNOWN | UNKNOWN | UNKNOWN | ⚫ UNKNOWN | None |

## Dependency map

| Dependency | Related module/area | Status | Notes |
|---|---|---|---|
| External amplifier | `47` | ⚫ UNKNOWN | B&O/Bose/basic audio variants must be separated |
| MOST topology | `5F`, `47`, `56` | ⚫ UNKNOWN | MOST faults may break audio sources |
| Gateway list | `19` | ⚫ UNKNOWN | Installed modules may affect visibility/communication |
| Green Menu source flags | Green Menu | ⚫ UNKNOWN | Must be tested safely |
| Coding/adaptations | `5F`/`56` | ⚫ UNKNOWN | Need baseline dumps |

## Test matrix

| Test ID | Source/function | Original state | Modified state | Expected result | Observed result | DTC after | Rollback | Status |
|---|---|---|---|---|---|---|---|---|
| T-YYYYMMDD-5F-AUDIO-001 | TBD | TBD | TBD | TBD | TBD | TBD | TBD | ⚫ UNKNOWN |

## Open questions

| ID | Question | Status |
|---|---|---|
| HIGH-AUDIO-Q001 | Which audio source entries are coding-controlled? | ⚫ UNKNOWN |
| HIGH-AUDIO-Q002 | Which are dataset/parameterization-controlled? | ⚫ UNKNOWN |
| HIGH-AUDIO-Q003 | Which depend on amplifier type or MOST topology? | ⚫ UNKNOWN |
| HIGH-AUDIO-Q004 | Which menu entries can appear without functional audio output? | ⚫ UNKNOWN |
