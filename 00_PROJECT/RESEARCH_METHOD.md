# RESEARCH METHOD

## Purpose

This document defines how coding, adaptation, Security Access and dataset information should be researched and promoted from unknown to confirmed.

## Core rule

A setting is not confirmed because it appears in a label file, community post, screenshot or memory.

A setting becomes confirmed only when it has sufficient evidence and a controlled test context.

## Evidence hierarchy

| Level | Evidence type | Typical status |
|---:|---|---|
| E0 | No evidence / empty field | ⚫ UNKNOWN |
| E1 | Research idea or suspected correlation | 🔴 HYPOTHESIS |
| E2 | Community report or single unstructured observation | 🟠 TO VERIFY |
| E3 | Single structured test with logs and rollback | 🟡 VARIANT or 🟠 TO VERIFY |
| E4 | Repeated structured tests on same variant | 🟢 CONFIRMED for that variant |
| E5 | Repeated tests across multiple variants | 🟢 CONFIRMED or 🟡 VARIANT with matrix |

## Status promotion path

```text
⚫ UNKNOWN
    ↓ observation
🔴 HYPOTHESIS
    ↓ structured test
🟠 TO VERIFY
    ↓ evidence + rollback
🟡 VARIANT
    ↓ repeated evidence across conditions
🟢 CONFIRMED
```

A finding may also be downgraded if new evidence conflicts with earlier results.

## Required context for every finding

| Context field | Required | Notes |
|---|---:|---|
| System | Yes | MMI 3G High / Basic / Plus |
| Vehicle | Yes | Model, year, body, market |
| VIN partial | Recommended | Use partial/sanitized VIN only |
| Controller address | Yes | Example format: `5F`, `09`, `19` |
| Controller part number | Yes | Required for variant tracking |
| Software version | Yes | Required for variant tracking |
| Original value | Yes | Coding/adaptation/dataset before change |
| Modified value | Yes | Coding/adaptation/dataset after change |
| Expected result | Yes | What the test is supposed to prove |
| Observed result | Yes | What actually happened |
| DTC before | Yes | Full or summarized diagnostic state |
| DTC after | Yes | Full or summarized diagnostic state |
| Rollback result | Yes | Whether original behavior returned |
| Evidence link | Yes | Log/screenshot/photo/video/reference |

## Research object types

### Long Coding

Each byte/bit must be tracked.

Mandatory fields:

| Field | Required |
|---|---:|
| Byte | Yes |
| Bit | Yes |
| Label | Yes, or `UNKNOWN` |
| Known behavior | Yes, or `UNKNOWN` |
| Observed effect | Yes, or `Not tested` |
| Dependencies | Yes, or `UNKNOWN` |
| Risk | Yes |
| Rollback | Yes |
| Status | Yes |
| Tested on | Yes, if tested |
| Controller part number | Yes, if tested |
| Software version | Yes, if tested |
| Market | Yes, if tested |
| Vehicle | Yes, if tested |
| Evidence | Yes, if status is not `⚫ UNKNOWN` |
| Notes | Optional |

### Adaptations

Each channel must separate:

- channel number,
- channel name,
- known value range,
- default value,
- observed value,
- effect,
- dependency,
- Security Access requirement,
- risk,
- rollback,
- status,
- evidence.

### Security Access

Security Access entries must not be guessed.

For every candidate login/security access value:

| Field | Required |
|---|---:|
| Controller | Yes |
| Operation requiring access | Yes |
| Login value | Only if verified |
| Required conditions | Yes |
| Not required when | Yes, if known |
| Risk | Yes |
| Evidence | Yes |
| Status | Yes |

Unverified values must be omitted or masked and documented as research tasks, not instructions.

### Datasets

Dataset research must track:

| Field | Required |
|---|---:|
| Address | Yes, or `UNKNOWN` |
| Function | Yes, or `UNKNOWN` |
| System | Yes |
| Possible values | Only if sourced/tested |
| Checksum | Required if binary/source discussed |
| Source | Yes |
| Risk | Yes |
| Backup required | Yes |
| Status | Yes |

Binary files must not be generated or published without a known source and legal clearance.

## Conflict handling

When two sources disagree:

1. Do not merge them into one claim.
2. Create separate variant entries.
3. Mark both as `🟡 VARIANT`, `🟠 TO VERIFY`, or `🔴 HYPOTHESIS`.
4. Add conditions:
   - HW part number,
   - software version,
   - vehicle,
   - market,
   - PR-codes/equipment,
   - tool used.
5. Add a new test case to resolve the conflict.

## Risk classification

| Risk | Meaning | Examples |
|---|---|---|
| LOW | Visible/UI behavior, easy rollback | Menu visibility, non-critical display option |
| MEDIUM | DTC possible, feature interaction possible | audio source, car menu, parking display |
| HIGH | Lighting, gateway, power management, MOST, camera, safety-related behavior | DRL, exterior lights, gateway list, amplifier config |
| CRITICAL | Boot, dataset, flash, immobilizer-adjacent, component protection-adjacent | dataset write, parameterization, firmware-level change |

## Documentation language

Use concise technical Markdown:

- state facts separately from hypotheses,
- use tables for structured data,
- avoid narrative certainty,
- mark unknowns explicitly,
- link evidence,
- include rollback notes.
