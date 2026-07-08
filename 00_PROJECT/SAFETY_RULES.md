# SAFETY RULES

## Core rule

Do not test unknown coding bits, adaptation channels, Security Access operations or datasets without backup and rollback.

## Mandatory safety baseline

Before every change:

| Requirement | Mandatory |
|---|---:|
| Full Auto-Scan | Yes |
| Original coding backup | Yes |
| Original adaptation backup where applicable | Yes |
| Dataset/parameterization backup where applicable | Yes |
| Controller part number recorded | Yes |
| Software version recorded | Yes |
| DTC before change saved | Yes |
| Rollback path defined | Yes |
| Stable voltage/power support | Strongly recommended |

## Do not proceed when

| Condition | Action |
|---|---|
| Battery voltage is unstable | Stop |
| Original coding is not saved | Stop |
| Controller part number is unknown | Stop |
| Software version is unknown | Stop |
| DTC state before test is unknown | Stop |
| Rollback path is unknown | Stop |
| Change affects dataset/parameterization and no backup exists | Stop |
| Unknown setting is safety/lighting/gateway related and no controlled test environment exists | Stop |

## Risk classes

| Risk | Meaning | Handling |
|---|---|---|
| LOW | UI/menu/display-level change | Backup required |
| MEDIUM | Feature dependency, DTC possible | Backup + DTC + rollback required |
| HIGH | Lighting, gateway, MOST, camera, audio routing, power management | Controlled test + clear rollback required |
| CRITICAL | Dataset write, parameterization, boot behavior, flash-related behavior | Research-only unless full recovery path exists |

## High-risk areas

Treat the following as high risk by default:

- BCM/J519 light coding,
- DRL behavior,
- USA/EU lighting conversion,
- coming home/leaving home logic,
- gateway installation list,
- MOST ring configuration,
- amplifier/audio system configuration,
- rear camera activation,
- park assist visualization,
- dataset and parameterization writes,
- Green Menu options affecting boot, SWDL, MOST, diagnosis or internal services.

## Critical-risk areas

Treat the following as critical unless proven otherwise:

- firmware flashing,
- emergency update,
- bootloader/IPL-related operations,
- dataset upload without verified backup,
- parameterization without known source,
- EEPROM writes,
- component protection-adjacent operations,
- operations that may brick 5F/56/07 or interrupt diagnostic communication.

## Backup requirements

### Coding backup

Minimum:

```text
Controller address:
Controller name:
Part number:
SW version:
Original coding:
Date:
Tool:
Vehicle:
```

### Adaptation backup

Minimum:

```text
Controller address:
Controller name:
Part number:
SW version:
Channel:
Original value:
Date:
Tool:
Vehicle:
```

### Dataset backup

Minimum:

```text
Controller address:
Controller name:
Part number:
SW version:
Dataset source:
Backup file/hash:
Date:
Tool:
Vehicle:
```

## Rollback rules

Rollback must restore:

| Item | Required |
|---|---:|
| Original coding/adaptation/dataset state | Yes |
| Original visible behavior | Yes |
| No new DTC or documented known DTC state | Yes |
| Controller communication stable | Yes |

If rollback does not restore original behavior, mark the finding as unresolved and open an investigation note.

## Light coding safety

Lighting changes may be legally sensitive and safety-critical.

Before testing light coding:

1. record current BCM/J519 coding/adaptations,
2. identify lamp type,
3. identify market,
4. record DTC before,
5. test with ignition states,
6. test each light switch position,
7. test CH/LH/DRL/turn signal behavior separately,
8. check bulb errors,
9. check DTC after,
10. rollback and verify original behavior.

Do not publish a light coding table without variant and risk notes.

## Security Access safety

Do not guess login values.

A Security Access entry must state:

| Field | Required |
|---|---:|
| Controller | Yes |
| Operation | Yes |
| Login verified? | Yes |
| Variant | Yes |
| Risk | Yes |
| Evidence | Yes |
| When required | Yes |
| When not required | If known |

Unknown or community-sourced login values must not be treated as instructions.

## Dataset safety

Do not generate or publish binary dataset files unless:

| Requirement | Required |
|---|---:|
| Source is known | Yes |
| Legal/public release status is clear | Yes |
| Checksum/hash is recorded | Yes |
| Backup exists | Yes |
| Recovery method exists | Yes |
| Variant is identified | Yes |

Dataset research should prefer metadata, mapping and test notes over binary distribution.

## Public release safety

Before release:

- remove full VINs,
- remove license plates,
- remove personal/customer data,
- verify that no unconfirmed value is marked confirmed,
- verify that no binary/proprietary data was added without source,
- verify that high-risk items have rollback notes,
- update `CHANGELOG.md`.
