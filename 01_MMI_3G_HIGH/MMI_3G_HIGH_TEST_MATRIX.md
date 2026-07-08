# MMI 3G High — Test Matrix

## Purpose

This file tracks structured tests for Audi MMI 3G High research.

A finding may not become `🟢 CONFIRMED` without a linked test or equivalent evidence.

## Test status legend

| Status | Meaning |
|---|---|
| 🟢 PASS / CONFIRMED | Test completed, rollback successful, evidence attached |
| 🟡 VARIANT | Test passed only for specific HW/SW/vehicle conditions |
| 🟠 INCOMPLETE / TO VERIFY | Test started or source exists, but evidence is incomplete |
| 🔴 FAILED / HYPOTHESIS REJECTED | Expected behavior did not occur or risk was detected |
| ⚫ NOT TESTED / UNKNOWN | Test not executed |

## Master test matrix

| Test ID | Area | Vehicle | Controller | Part number | SW version | Change | Expected result | Observed result | DTC after | Rollback | Status | Evidence |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| T-YYYYMMDD-5F-LCOD-001 | Long Coding | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | ⚫ NOT TESTED | None |
| T-YYYYMMDD-5F-ADAPT-001 | Adaptation | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | ⚫ NOT TESTED | None |
| T-YYYYMMDD-5F-SA-001 | Security Access | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | ⚫ NOT TESTED | None |
| T-YYYYMMDD-5F-DATASET-001 | Dataset | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | ⚫ NOT TESTED | None |
| T-YYYYMMDD-5F-MENU-001 | Green/Red Menu | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | ⚫ NOT TESTED | None |
| T-YYYYMMDD-5F-AUDIO-001 | Audio/MOST | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | ⚫ NOT TESTED | None |
| T-YYYYMMDD-5F-CAR-001 | CAR Menu | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | ⚫ NOT TESTED | None |
| T-YYYYMMDD-09-LIGHT-001 | Light Coding dependency | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | TBD | ⚫ NOT TESTED | None |

## Full test form

```markdown
# Test ID: T-YYYYMMDD-MODULE-AREA-001

| Field | Value |
|---|---|
| Test ID |  |
| Date |  |
| Vehicle |  |
| VIN partial |  |
| Controller |  |
| Part number |  |
| SW version |  |
| Original coding |  |
| Modified coding |  |
| Changed byte/bit |  |
| Expected result |  |
| Observed result |  |
| DTC before |  |
| DTC after |  |
| Rollback successful |  |
| Status |  |
| Notes |  |
```

## Evidence folder convention

Recommended evidence path:

```text
09_TEST_LOGS/YYYY/YYYY-MM-DD/T-YYYYMMDD-MODULE-AREA-001/
```

Recommended files:

```text
autoscan_before.txt
autoscan_after.txt
coding_before.txt
coding_after.txt
adaptation_before.csv
adaptation_after.csv
dtc_before.txt
dtc_after.txt
rollback_notes.md
screenshots/
photos/
video/
```

## Required metadata for MMI 3G High tests

| Field | Required |
|---|---:|
| Vehicle model/year | Yes |
| Market | Yes |
| Controller address | Yes |
| Controller part number | Yes |
| Software version / train | Yes |
| Tool used | Yes |
| Original value | Yes |
| Modified value | Yes |
| DTC before/after | Yes |
| Rollback result | Yes |
| Evidence link | Yes |

## Promotion rule

A test result can update research files only when:

| Requirement | Needed for CONFIRMED |
|---|---:|
| Controlled single change | Yes |
| Before/after evidence | Yes |
| Controller metadata | Yes |
| DTC before/after | Yes |
| Rollback successful | Yes |
| Effect reproduced or clearly documented | Yes |

If one of these is missing, use `🟠 TO VERIFY`, `🟡 VARIANT`, or lower.

## Failed test template

```markdown
## Failed test — <Test ID>

| Field | Value |
|---|---|
| Expected result |  |
| Observed result |  |
| Failure type |  |
| DTC after |  |
| Rollback successful |  |
| Risk reassessment |  |
| New status | 🔴 HYPOTHESIS rejected / 🟠 TO VERIFY unresolved |
| Next action |  |
```
