# MMI 3G High — Hypothesis Register

## Purpose

This register stores research hypotheses that are not confirmed.

A hypothesis is not a coding instruction, not a retrofit instruction and not a confirmed dataset.

## Hypothesis status legend

| Status | Meaning |
|---|---|
| 🔴 HYPOTHESIS | Research idea, not tested |
| 🟠 TO VERIFY | Some plausible evidence exists, but not enough |
| 🟡 VARIANT | Evidence suggests variant dependence |
| ⚫ UNKNOWN | No usable evidence |
| 🟢 CONFIRMED | Not allowed here; move confirmed findings to the correct research file |

## Hypothesis entry template

```markdown
## HYP-HIGH-XXX — <short title>

| Field | Value |
|---|---|
| Hypothesis ID | HYP-HIGH-XXX |
| Area | Long Coding / Adaptation / Green Menu / Red Menu / Audio / CAR / Gateway / Light / Dataset / Security Access |
| Claim |  |
| Why this is suspected |  |
| Evidence currently available | None / link |
| Evidence missing |  |
| Risk if wrong | LOW / MEDIUM / HIGH / CRITICAL |
| Required test |  |
| Rollback required | Yes |
| Current status | 🔴 HYPOTHESIS |
| Notes |  |
```

## Active hypotheses

| Hypothesis ID | Area | Claim | Evidence available | Evidence missing | Risk | Status |
|---|---|---|---|---|---|---|
| HYP-HIGH-001 | Controller addressing | MMI 3G High data may appear under different diagnostic addresses depending on vehicle/tool context | Project context only | Auto-Scan and controller ID | MEDIUM | 🔴 HYPOTHESIS |
| HYP-HIGH-002 | Red Menu | Red Menu identity fields may match known HNAV notes for this unit | Project context only | Red Menu photos/transcription | LOW | 🔴 HYPOTHESIS |
| HYP-HIGH-003 | Audio/MOST | Audio source behavior may depend on external sound system and MOST topology | General architecture assumption | Audio/MOST scan evidence | HIGH | 🔴 HYPOTHESIS |
| HYP-HIGH-004 | CAR menu | CAR menu visibility may depend on Gateway installation list and related modules | General dependency assumption | Gateway scan and UI evidence | HIGH | 🔴 HYPOTHESIS |
| HYP-HIGH-005 | Light menu | Light/CAR menu behavior may depend on BCM/headlight range configuration | General dependency assumption | BCM/Gateway/light evidence | HIGH | 🔴 HYPOTHESIS |

## Downgrade rules

| Situation | Required action |
|---|---|
| Claim lacks evidence | Keep as `🔴 HYPOTHESIS` |
| Claim conflicts with scan evidence | Mark as conflict and do not publish |
| Claim works on one vehicle only | Mark `🟡 VARIANT`, not global |
| Claim lacks rollback | Do not promote |
| Claim affects safety/legal/lighting/MOST/Gateway/datasets | Require higher evidence threshold |

## Promotion rule

A hypothesis can only leave this file when:

1. evidence exists,
2. test context is recorded,
3. DTC before/after exists where relevant,
4. rollback is successful,
5. dependencies are documented,
6. status is assigned in the target research file.
