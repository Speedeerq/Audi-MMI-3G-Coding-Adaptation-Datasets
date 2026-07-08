# MMI 3G High — Adaptation Research

## Purpose

This file documents Audi MMI 3G High adaptation channels.

No adaptation channel, value range or effect is confirmed without evidence.

## Rules

| Rule | Requirement |
|---|---|
| No guessed channels | Unknown channels stay `⚫ UNKNOWN` |
| Default value must be separated from observed value | Required |
| Security Access must be documented | Required when relevant |
| DTC before/after must be recorded | Required |
| Rollback must be possible | Required |
| Variant conditions must be stated | Required |

## Adaptation entry template

```markdown
## Channel XXX — UNKNOWN

| Field | Value |
|---|---|
| Channel | XXX |
| Name | UNKNOWN |
| Value range | UNKNOWN |
| Default value | UNKNOWN |
| Observed value | UNKNOWN |
| Effect | Not tested |
| Dependencies | UNKNOWN |
| Security Access | UNKNOWN |
| Risk | MEDIUM until classified |
| Rollback | Restore original value and re-scan |
| Status | ⚫ UNKNOWN |
| Evidence | None |
```

## Channel inventory

This section is intentionally empty until adaptation maps or scan exports are available.

| Channel | Name | Observed value | Value range | Status | Evidence |
|---|---|---|---|---|---|
| TBD | TBD | TBD | TBD | ⚫ UNKNOWN | None |

## Adaptation intake table

| Intake ID | Channel | Reported name/effect | Source | Controller/SW | Status | Next action |
|---|---|---|---|---|---|---|
| HIGH-ADAPT-IN-001 | TBD | TBD | TBD | TBD | ⚫ UNKNOWN | Add adaptation map |

## Security Access tracking

Every adaptation test must record whether Security Access was required.

| Channel | Operation | Security Access required? | Evidence | Status |
|---|---|---|---|---|
| TBD | Read value | UNKNOWN | None | ⚫ UNKNOWN |
| TBD | Change value | UNKNOWN | None | ⚫ UNKNOWN |

## Persistence testing

Some adaptation changes may appear to work until ignition cycle, MMI reboot or vehicle sleep.

| Persistence check | Required when |
|---|---|
| Immediate effect | Every adaptation test |
| MMI reboot | UI/menu/source behavior |
| Ignition cycle | Most settings |
| Vehicle sleep/wake | Gateway/audio/power related settings |
| DTC re-check | Every test |

## Risk classification

| Risk | Example type | Handling |
|---|---|---|
| LOW | Display/UI setting | Backup and rollback |
| MEDIUM | Feature/menu/audio setting | DTC check and rollback |
| HIGH | Gateway/MOST/camera/lighting dependency | Controlled test only |
| CRITICAL | Dataset/boot/flash-related behavior | Do not test without recovery path |

## Open questions

| ID | Question | Status |
|---|---|---|
| HIGH-ADAPT-Q001 | Which adaptation channels are exposed on each MMI 3G High controller/SW variant? | ⚫ UNKNOWN |
| HIGH-ADAPT-Q002 | Which channels require Security Access? | ⚫ UNKNOWN |
| HIGH-ADAPT-Q003 | Which channels persist after ignition cycle and sleep/wake? | ⚫ UNKNOWN |
| HIGH-ADAPT-Q004 | Which channels create DTC when changed? | ⚫ UNKNOWN |
