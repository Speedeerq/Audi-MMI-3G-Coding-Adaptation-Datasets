# MMI 3G High — Long Coding Research

## Purpose

This file documents Audi MMI 3G High long coding behavior.

No byte or bit is considered confirmed unless it has test evidence.

## Rules

| Rule | Requirement |
|---|---|
| Do not guess | Unknown bytes/bits stay `⚫ UNKNOWN` |
| Do not skip unknowns | Every observed byte/bit should have an entry |
| One test = one change | Unless testing dependencies explicitly |
| Always record original coding | Required before every test |
| Always record rollback | Required for confirmation |
| Always record DTC before/after | Required for status promotion |

## Coding entry template

```markdown
## Byte XX / Bit Y — UNKNOWN

| Field | Value |
|---|---|
| Byte | XX |
| Bit | Y |
| Label | UNKNOWN |
| Known behavior | UNKNOWN |
| Observed effect | Not tested |
| Dependencies | UNKNOWN |
| Risk | MEDIUM until classified |
| Rollback | Restore original coding and re-scan |
| Status | ⚫ UNKNOWN |
| Tested on | Not tested |
| Controller part number | UNKNOWN |
| Software version | UNKNOWN |
| Market | UNKNOWN |
| Vehicle | UNKNOWN |
| Evidence | None |
| Notes |  |
```

## Byte inventory

This section is intentionally empty until coding length and baseline dumps are available.

| Byte | Bits documented | Current status | Evidence |
|---:|---:|---|---|
| TBD | TBD | ⚫ UNKNOWN | None |

## Research intake table

Use this table for new observations before promoting them into byte/bit entries.

| Intake ID | Byte | Bit | Reported label/effect | Source | Vehicle/SW | Status | Next action |
|---|---:|---:|---|---|---|---|---|
| HIGH-LCOD-IN-001 | TBD | TBD | TBD | TBD | TBD | ⚫ UNKNOWN | Add baseline evidence |

## Test plan for unknown bits

Unknown bits may be tested only when the safety baseline is complete.

| Step | Action | Required evidence |
|---:|---|---|
| 1 | Save Auto-Scan | `autoscan_before.txt` |
| 2 | Save original coding | `coding_before.txt` |
| 3 | Identify byte/bit | coding screenshot/export |
| 4 | Change one bit | `coding_after.txt` |
| 5 | Reboot/cycle as required | observation notes |
| 6 | Record visible behavior | photo/video/screenshot |
| 7 | Scan DTC after | `dtc_after.txt` |
| 8 | Rollback | `coding_rollback.txt` |
| 9 | Confirm original behavior | notes/evidence |

## Dependency notes

Potential dependencies must be validated per test.

| Dependency | Related module | Status | Notes |
|---|---|---|---|
| Gateway installation list | `19` | ⚫ UNKNOWN | May influence menu/module visibility |
| Audio system | `47`, `56`, `5F` | ⚫ UNKNOWN | External amplifier/MOST/source dependencies possible |
| Camera/OPS | `6C`, `10`, `5F` | ⚫ UNKNOWN | May influence reverse display/CAR menu |
| Lighting | `09`, `55` | ⚫ UNKNOWN | Exterior lighting should be tested separately |
| Cluster display | `17` | ⚫ UNKNOWN | Driver information display dependencies possible |

## Open questions

| ID | Question | Status |
|---|---|---|
| HIGH-LCOD-Q001 | What is the coding length for each tested MMI 3G High controller/SW combination? | ⚫ UNKNOWN |
| HIGH-LCOD-Q002 | Which bytes are stable across variants? | ⚫ UNKNOWN |
| HIGH-LCOD-Q003 | Which bits affect only UI and which affect other modules? | ⚫ UNKNOWN |
| HIGH-LCOD-Q004 | Which bits trigger DTC or gateway inconsistencies? | ⚫ UNKNOWN |
