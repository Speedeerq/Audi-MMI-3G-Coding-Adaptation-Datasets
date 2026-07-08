# STATUS LEGEND

Every coding bit, adaptation channel, Security Access entry, dataset entry and hidden function must have a status.

## Status table

| Status | Label | Meaning | Can be used as instruction? |
|---|---|---|---|
| 🟢 | CONFIRMED | Confirmed by controlled test, documentation, log, or repeatable evidence | Yes, with evidence and rollback |
| 🟡 | VARIANT | Confirmed only under specific HW/SW/market/equipment conditions | Only for matching variant |
| 🟠 | TO VERIFY | Plausible or observed, but evidence is incomplete | No, test first |
| 🔴 | HYPOTHESIS | Research hypothesis or suspected relation | No |
| ⚫ | UNKNOWN | Function is unknown or not tested | No |

## 🟢 CONFIRMED

Use only when the finding has:

| Requirement | Required |
|---|---:|
| Original value | Yes |
| Modified value | Yes |
| Observed effect | Yes |
| Controller metadata | Yes |
| Vehicle context | Yes |
| DTC before/after | Yes |
| Rollback result | Yes |
| Evidence link | Yes |

A confirmed claim may still be limited to one variant if not tested broadly.

## 🟡 VARIANT

Use when a finding is true only for specific conditions.

Examples of variant conditions:

- MMI 3G High vs Basic vs Plus,
- address `5F` vs `56`,
- pre-facelift vs facelift,
- USA vs EU market,
- left-hand drive vs right-hand drive,
- B&O vs Bose vs basic audio,
- rear camera present vs not present,
- APS/OPS installed vs not installed,
- xenon/AFS vs halogen,
- software train/version,
- controller part number,
- PR-code/equipment package.

Variant entries must include a compatibility note.

## 🟠 TO VERIFY

Use when:

- one observation exists but is incomplete,
- source lacks DTC/rollback evidence,
- behavior was seen but not isolated,
- dependency is suspected but not confirmed,
- tool labels suggest a function but no test exists.

`🟠 TO VERIFY` entries require a planned test before being used.

## 🔴 HYPOTHESIS

Use for research ideas.

A hypothesis must include:

| Field | Required |
|---|---:|
| Hypothesis statement | Yes |
| Reasoning | Yes |
| Proposed test | Yes |
| Risk level | Yes |
| Rollback requirement | Yes |

A hypothesis must not be written as a coding instruction.

## ⚫ UNKNOWN

Use when the function is not known.

Unknown does not mean irrelevant.  
Unknown means it needs structured research.

For long coding:

- do not skip unknown bits,
- add the byte/bit,
- set label to `UNKNOWN`,
- add a safe test plan if testing is reasonable,
- mark risk,
- require backup.

## Status downgrade

A status must be downgraded when:

| Situation | Downgrade |
|---|---|
| Conflicting evidence appears | CONFIRMED → VARIANT or TO VERIFY |
| Rollback failed | CONFIRMED/VARIANT → TO VERIFY |
| DTC appears after change | Reassess risk and status |
| Behavior cannot be reproduced | CONFIRMED → TO VERIFY |
| Missing metadata discovered | CONFIRMED → TO VERIFY or VARIANT |

## Status field syntax

Preferred syntax:

```markdown
| Status | 🟠 TO VERIFY |
```

For complex entries:

```markdown
| Status | 🟡 VARIANT — confirmed only on tested controller/SW combination |
```
