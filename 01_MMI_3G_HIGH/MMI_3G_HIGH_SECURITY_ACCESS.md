# MMI 3G High — Security Access Research

## Purpose

This file documents Security Access / login requirements for Audi MMI 3G High research.

Do not add guessed login values.

## Critical rule

Security Access values are not documentation unless they are linked to evidence and operation context.

A value without context can be dangerous and misleading.

## Security Access entry template

```markdown
## Security Access — <Operation or UNKNOWN>

| Field | Value |
|---|---|
| Controller | UNKNOWN |
| Controller address | UNKNOWN |
| Operation | UNKNOWN |
| Login / Security Access value | Not published / UNKNOWN |
| Required? | UNKNOWN |
| Not required when | UNKNOWN |
| Preconditions | UNKNOWN |
| Risk | HIGH until classified |
| Rollback | Restore original value/state and re-scan |
| Status | ⚫ UNKNOWN |
| Evidence | None |
| Notes |  |
```

## Security Access register

| ID | Controller | Operation | Required? | Value status | Risk | Evidence | Status |
|---|---|---|---|---|---|---|---|
| HIGH-SA-001 | TBD | TBD | UNKNOWN | Not published / UNKNOWN | HIGH | None | ⚫ UNKNOWN |

## Allowed status types

| Status | Meaning |
|---|---|
| 🟢 CONFIRMED | Login requirement confirmed for a specific operation and controller/SW variant |
| 🟡 VARIANT | Requirement differs by controller/SW/market/equipment |
| 🟠 TO VERIFY | Reported but not sufficiently tested |
| 🔴 HYPOTHESIS | Suspected only |
| ⚫ UNKNOWN | Not known |

## Documentation requirements

For any confirmed Security Access entry, record:

| Field | Required |
|---|---:|
| Controller address | Yes |
| Controller part number | Yes |
| Software version | Yes |
| Vehicle/market | Yes |
| Operation attempted | Yes |
| Tool used | Yes |
| Access accepted/rejected | Yes |
| DTC before/after | Yes |
| Rollback result | Yes |
| Evidence | Yes |

## Risk notes

| Risk | Example operation type | Policy |
|---|---|---|
| LOW | Read-only diagnostic access | Evidence still required |
| MEDIUM | Non-critical adaptation unlock | Backup and rollback required |
| HIGH | Coding/adaptation affecting MOST/Gateway/camera/lights | Controlled test required |
| CRITICAL | Dataset/parameterization/flash/EEPROM-like operation | Do not proceed without recovery path |

## Do not publish list

Do not publish:

- unverified login values,
- values copied without source,
- values not tied to a controller/SW variant,
- values not tied to a specific operation,
- values that failed but were not documented,
- values that may encourage destructive testing.

## Open questions

| ID | Question | Status |
|---|---|---|
| HIGH-SA-Q001 | Which MMI 3G High operations require Security Access? | ⚫ UNKNOWN |
| HIGH-SA-Q002 | Are requirements different between controller addresses or SW variants? | ⚫ UNKNOWN |
| HIGH-SA-Q003 | Which adaptations are readable but not writable without Security Access? | ⚫ UNKNOWN |
| HIGH-SA-Q004 | Which operations should be documented as critical risk? | ⚫ UNKNOWN |
