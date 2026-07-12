# HNAV Prior-Chat Screenshot Evidence Review — 2026-07-12

## Scope

This review evaluates Red Engineering Menu and Green Menu readings recovered from earlier user conversations.

Source record:

```text
evidence/intake/MMI3GHIGH_HNAV_BASELINE_001/PRIOR_CHAT_SCREENSHOT_RECOVERY.md
```

## Recovered evidence impact

| Baseline area | Previous state | Recovered state | Decision |
|---|---|---|---|
| Software train | Project-note value only | Prior screenshot discussion records `HNav_EU_K0257_5_D1` | Keep `PARTIAL / TO VERIFY` |
| Variant | Project-note value only | Prior screenshot discussion records `9307` | Keep `PARTIAL / TO VERIFY` |
| RadioUnit | Project-note value only | Prior screenshot discussion records `9471` | Keep `PARTIAL / TO VERIFY` |
| MU version | Project-note value only | Prior screenshot discussion records `0187`; diagnostic metadata is consistent | Keep `PARTIAL / TO VERIFY` |
| Sample | Project-note value only | Prior screenshot discussion records `d1` | Keep `PARTIAL`; no `hwSample` equivalence claim |
| Green Menu structure | Missing | `main/diagnose` with `pml` and `settings` recovered | Track as `PARTIAL` observation |
| Green Menu settings entries | Missing | AMI/AUX, Microphones, Displays, Tel settings, HDD Nav DB recovered | Track as `PARTIAL` observation |
| Green Menu diagnostic display | Missing | HDD and function-restriction strings recovered | Track as `PARTIAL`; root cause unknown |
| NADPhone version display | Missing | `$ERROR$` recovered | Track as `PARTIAL / UNKNOWN` |
| Original screenshot files | Missing | Still missing | Keep corroboration requirement open |

## Independent diagnostic context

A prior Auto-Scan upload contains 5F metadata consistent with the unit and MU context, including:

```text
8T1 035 664 F
8T1 035 664 B
H-BN-NA H52 0187
8R0 060 884 KL / EUR 2023 3600
```

The raw scan is not imported by this review because it requires a separate sanitization and provenance pass.

## Claims not promoted

This review does not confirm:

- that `Sample d1` is the unit's effective `hwSample`,
- the exact source page of every recovered identity field,
- the cause of `CONTROL_UNIT_HDD_D`, `FUNCTION_RESTRICTION` or `$ERROR$`,
- Green Menu feature availability beyond the recorded visible menu entries,
- coding or adaptation behavior,
- dataset, SWDL, EEPROM, HDD or bootloader behavior,
- HNAV-to-HN+ conversion feasibility or barrier location.

## X0 gate impact

```text
IDENTITY SCREEN CONTEXT: PARTIAL RECOVERY AVAILABLE
GREEN MENU STRUCTURE: PARTIAL RECOVERY AVAILABLE
ORIGINAL IMAGE FILES: MISSING
SANITIZED AUTO-SCAN ATTACHMENT: PENDING
WRITE-CAPABLE EXPERIMENT ENTRY: BLOCKED
```

## Required next evidence

1. Re-upload or re-capture the original Red Menu identity pages.
2. Re-upload or re-capture the Green Menu pages showing menu paths and visible strings.
3. Capture the user-visible MMI version screen.
4. Prepare a sanitized Auto-Scan excerpt or complete sanitized scan.
5. Record capture date, unit state and tool/menu path.
6. Re-run manual review before changing any evidence status to `CAPTURED`.

## Decision

```text
PRIOR-CHAT SCREENSHOT EVIDENCE: ACCEPTABLE AS PARTIAL RECOVERY
BASELINE STATUS: TO VERIFY
TECHNICAL CLAIM PROMOTION: BLOCKED
RELEASE GATE: BLOCKED
```
