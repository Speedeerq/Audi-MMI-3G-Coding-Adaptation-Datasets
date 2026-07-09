# MMI 3G High — Source Review Protocol

## Purpose

This protocol defines how to review external or community information before it enters the repository.

No value from a forum, screenshot, video, PDF, dump or private note is automatically confirmed.

## Source classes

| Source class | Example | Default status |
|---|---|---|
| S0 — No source | Memory, guess, unsourced claim | ⚫ UNKNOWN |
| S1 — Informal source | Forum post, comment, chat message | 🔴 HYPOTHESIS |
| S2 — Single screenshot/video | One vehicle/tool context | 🟠 TO VERIFY |
| S3 — Structured scan/test | Auto-Scan + coding/adaptation + result | 🟡 VARIANT |
| S4 — Repeated structured tests | Multiple matching vehicles/variants | 🟢 CONFIRMED or 🟡 VARIANT |
| S5 — Official/OEM traceable source | Official document/package/service output | 🟠 TO VERIFY until matched to vehicle variant |

## Source intake form

```markdown
## Source review — SRC-HIGH-XXX

| Field | Value |
|---|---|
| Source ID | SRC-HIGH-XXX |
| Source type | Forum / scan / photo / video / PDF / official / own test |
| URL or file path |  |
| Claim being extracted |  |
| Vehicle/system context |  |
| Controller part number |  |
| Software version |  |
| Market |  |
| Evidence quality | LOW / MEDIUM / HIGH |
| Risk if wrong | LOW / MEDIUM / HIGH / CRITICAL |
| Default status |  |
| Can be used as instruction? | No unless confirmed |
| Notes |  |
```

## Required context for technical claims

| Claim type | Required context |
|---|---|
| Byte/bit meaning | Controller, coding before/after, changed bit, observed effect, DTC before/after, rollback |
| Adaptation effect | Channel, original value, new value, observed effect, DTC before/after, rollback |
| Security Access | Controller, operation, accepted/rejected result, tool, SW version, risk notes |
| Dataset | Source, checksum/hash, controller compatibility, backup, recovery path |
| Green/Red Menu | Menu path, screen photo, SW version, action performed or read-only state |
| Compatibility | Vehicle, market, HW/SW, equipment, module dependencies |

## Rejection rules

Reject or mark as insufficient when:

| Condition | Action |
|---|---|
| No controller metadata | Keep `🔴 HYPOTHESIS` or `⚫ UNKNOWN` |
| No original value | Cannot confirm change effect |
| No rollback | Cannot promote to confirmed |
| No DTC before/after | Cannot prove safety/fault attribution |
| No vehicle/SW context | Cannot generalize |
| Claim affects Gateway/MOST/lights/datasets | Require higher evidence threshold |
| Source provides login/dataset values without context | Do not publish as usable value |

## Conflict handling

| Conflict type | Action |
|---|---|
| Two sources disagree | Create conflict note, do not choose winner blindly |
| Source works only on one SW version | Mark `🟡 VARIANT` |
| Source contradicts own scan/test | Prefer own evidence, keep source as conflict |
| Source lacks context but seems plausible | Keep `🟠 TO VERIFY` |

## Promotion rules

A source can support `🟢 CONFIRMED` only when:

1. evidence is structured,
2. vehicle/controller/SW context is complete,
3. observed effect is documented,
4. DTC before/after is known when relevant,
5. rollback is successful,
6. dependencies are recorded,
7. risk is acceptable for publication.

## Publication safety

Never publish as direct instruction:

- unverified Security Access values,
- unverified dataset/parameterization values,
- high-risk Gateway/MOST/light coding,
- destructive Green/Red Menu options,
- region/firmware conversion steps without recovery documentation.
