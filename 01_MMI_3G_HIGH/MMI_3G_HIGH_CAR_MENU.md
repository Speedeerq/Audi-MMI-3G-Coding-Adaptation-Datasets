# MMI 3G High — CAR Menu Research

## Purpose

This file documents Audi MMI 3G High CAR menu behavior and dependencies.

CAR menu entries may be controlled by MMI coding, adaptations, Green Menu settings, Gateway installation list, BCM coding, camera/park assist modules, comfort modules and cluster configuration.

## Rules

| Rule | Requirement |
|---|---|
| Do not assume a menu item equals installed hardware | Required |
| Record related modules and DTC | Required |
| Separate visibility from function | Required |
| Separate UI behavior from vehicle behavior | Required |
| Test dependencies one at a time | Required |
| Rollback must restore original menu behavior | Required |

## CAR menu entry template

```markdown
## CAR menu item — UNKNOWN

| Field | Value |
|---|---|
| Menu path | UNKNOWN |
| Label | UNKNOWN |
| Visible? | UNKNOWN |
| Functional? | UNKNOWN |
| Known behavior | UNKNOWN |
| Observed effect | Not tested |
| Related MMI coding | UNKNOWN |
| Related adaptation | UNKNOWN |
| Related Green Menu path | UNKNOWN |
| Related modules | UNKNOWN |
| Dependencies | UNKNOWN |
| Risk | MEDIUM until classified |
| Rollback | Restore original coding/adaptation/menu state and re-scan |
| Status | ⚫ UNKNOWN |
| Evidence | None |
```

## CAR menu inventory

| ID | Menu path | Label | Visible? | Functional? | Dependencies | Status | Evidence |
|---|---|---|---|---|---|---|---|
| HIGH-CAR-001 | TBD | TBD | UNKNOWN | UNKNOWN | UNKNOWN | ⚫ UNKNOWN | None |

## Dependency map

| Function area | Likely related modules | Status | Notes |
|---|---|---|---|
| Vehicle settings | `5F`, `09`, `46`, `17`, `19` | ⚫ UNKNOWN | Needs test evidence |
| Parking display | `5F`, `10`, `6C`, `19` | ⚫ UNKNOWN | Visibility and function must be separated |
| Lighting settings | `5F`, `09`, `55`, `19` | ⚫ UNKNOWN | High-risk due legal/safety behavior |
| Audio settings | `5F`, `47`, `56` | ⚫ UNKNOWN | Depends on sound system variant |
| Service/setup menus | `5F`, `17`, `19` | ⚫ UNKNOWN | May depend on cluster/gateway data |

## Test matrix

| Test ID | Menu item | Original state | Modified state | Expected result | Observed result | Related DTC | Rollback | Status |
|---|---|---|---|---|---|---|---|---|
| T-YYYYMMDD-5F-CAR-001 | TBD | TBD | TBD | TBD | TBD | TBD | TBD | ⚫ UNKNOWN |

## “What happens if I click this?” documentation pattern

Each menu item should eventually include plain-language behavior:

```markdown
### What happens if I enable/click/change this?

| Question | Answer |
|---|---|
| What changes on screen? | UNKNOWN |
| What changes in the car? | UNKNOWN |
| Which module reacts? | UNKNOWN |
| Does it create DTC? | UNKNOWN |
| Can it be rolled back? | UNKNOWN |
| Risk | UNKNOWN |
| Status | ⚫ UNKNOWN |
```

## Open questions

| ID | Question | Status |
|---|---|---|
| HIGH-CAR-Q001 | Which CAR menu entries are controlled by MMI coding? | ⚫ UNKNOWN |
| HIGH-CAR-Q002 | Which are controlled by Green Menu flags? | ⚫ UNKNOWN |
| HIGH-CAR-Q003 | Which require Gateway installation list changes? | ⚫ UNKNOWN |
| HIGH-CAR-Q004 | Which visible entries are non-functional without installed modules? | ⚫ UNKNOWN |
| HIGH-CAR-Q005 | Which menu entries affect lighting, camera, parking or comfort modules? | ⚫ UNKNOWN |
