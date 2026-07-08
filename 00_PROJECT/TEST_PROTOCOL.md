# TEST PROTOCOL

## Purpose

This protocol defines how to test Audi MMI 3G coding, adaptation, Security Access, dataset and light coding behavior safely and reproducibly.

## Mandatory pre-test checklist

Before every change:

| Step | Required | Notes |
|---:|---:|---|
| 1 | Yes | Full Auto-Scan saved |
| 2 | Yes | Original long coding copied/exported |
| 3 | Yes | Original adaptation value recorded |
| 4 | Yes, if applicable | Dataset/parameterization backup created |
| 5 | Yes | Controller address recorded |
| 6 | Yes | Controller part number recorded |
| 7 | Yes | Software version recorded |
| 8 | Yes | Market/vehicle/equipment context recorded |
| 9 | Yes | DTC before change saved |
| 10 | Yes | Rollback path prepared |
| 11 | Recommended | Stable charger/power supply connected |
| 12 | Recommended | Photos/screenshots taken before change |

No unknown bit/channel/dataset test should proceed without this checklist.

## Test ID format

Use:

```text
T-YYYYMMDD-MODULE-AREA-###
```

Examples:

```text
T-20260708-5F-LCOD-001
T-20260708-09-LIGHT-001
T-20260708-5F-ADAPT-001
T-20260708-5F-SA-001
T-20260708-5F-DATASET-001
```

## Test form

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

## Test categories

| Code | Category |
|---|---|
| LCOD | Long Coding |
| ADAPT | Adaptation |
| SA | Security Access |
| DATASET | Dataset / parameterization |
| MENU | Green/Red Menu |
| AUDIO | Audio/MOST/source behavior |
| CAR | CAR menu behavior |
| LIGHT | Light coding |
| COMPAT | Compatibility/variant check |
| ROLLBACK | Rollback validation |

## Test execution procedure

### 1. Define hypothesis or question

Use clear wording:

```text
Does changing <byte/bit/channel/value> alter <specific behavior> on <specific controller/SW/vehicle>?
```

Do not test multiple unknowns at once unless the test is explicitly designed as a dependency test.

### 2. Record baseline

Record:

- coding/adaptation/dataset state,
- visible MMI behavior,
- relevant menus,
- DTC state,
- gateway installation list if relevant,
- sleep/ignition behavior if relevant,
- battery voltage if relevant.

### 3. Apply one controlled change

Preferred rule:

```text
One test = one change
```

Exceptions must be documented.

### 4. Observe behavior

Observe:

| Observation type | Required when relevant |
|---|---:|
| MMI screen behavior | Yes |
| CAR menu behavior | Yes |
| audio source behavior | Yes |
| camera/OPS behavior | Yes |
| exterior light behavior | Yes |
| instrument cluster behavior | Yes |
| DTC change | Yes |
| gateway/module communication | Yes |
| sleep/current drain suspicion | Yes |

### 5. Cycle conditions

Depending on change type, test:

| Cycle | When required |
|---|---|
| Ignition OFF/ON | Most coding/adaptation tests |
| MMI reboot | Infotainment UI tests |
| Vehicle sleep/wake | Power/gateway/MOST behavior |
| Drive cycle | Cluster/CAR/driver assistance behavior |
| Light switch positions | Light coding tests |
| Reverse gear | Camera/OPS tests |

### 6. Rollback

Restore original value.

Record:

| Rollback field | Required |
|---|---:|
| Original value restored | Yes |
| DTC cleared/rechecked | Yes |
| Original behavior returned | Yes |
| Rollback successful | Yes/No |
| Remaining issue | If any |

If rollback fails, status cannot be `🟢 CONFIRMED`.

## Evidence storage

Recommended paths:

```text
09_TEST_LOGS/YYYY/YYYY-MM-DD/<Test-ID>/
10_BACKUPS/YYYY/YYYY-MM-DD/<Vehicle-or-Controller>/
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
screenshots/
photos/
notes.md
```

## Privacy

Do not publish full VINs, personal data, customer data, plate numbers or location-sensitive data.

Use:

```text
VIN partial: WAU****123
```

## Confirmation requirements

A finding may become `🟢 CONFIRMED` only when:

| Requirement | Met |
|---|---|
| Controlled change | Yes |
| Observed result matches expected or is clearly documented | Yes |
| DTC checked before/after | Yes |
| Rollback tested | Yes |
| Controller/SW/vehicle metadata recorded | Yes |
| Evidence attached | Yes |

## Failed test handling

Failed tests are valuable.

Use this result format:

```markdown
| Status | 🔴 HYPOTHESIS rejected / 🟠 TO VERIFY unresolved |
| Reason | Observed result did not match expected behavior |
| Next step |  |
```
