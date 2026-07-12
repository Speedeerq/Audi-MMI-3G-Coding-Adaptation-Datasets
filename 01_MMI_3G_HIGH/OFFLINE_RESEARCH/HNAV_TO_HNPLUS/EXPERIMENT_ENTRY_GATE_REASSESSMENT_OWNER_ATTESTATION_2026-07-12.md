# HNAV → HN+ Experiment Entry Gate Reassessment — Owner Attestation — 2026-07-12

## Trigger

The owner accepted the supplied diagnostic files, Gateway Installation List screenshots and Red/Green Menu transcriptions as authentic and accurate, with no additional vehicle confirmation required for those evidence items.

## Gate impact

| Input | Previous state | Reassessed state |
|---|---|---|
| Historical Auto-Scan evidence | PARTIAL | `CAPTURED` for recorded sessions |
| Historical DTC context | PARTIAL | `CAPTURED` as time-bounded observations |
| Gateway Installation List | PARTIAL visual reconstruction | `CAPTURED` owner-attested visual evidence |
| Red Menu identity readings | PARTIAL recovery | `CAPTURED` owner-attested observations |
| Green Menu structure/readings | PARTIAL recovery | `CAPTURED` owner-attested observations |
| Re-capture of accepted sources | REQUIRED | `NOT REQUIRED` |
| 5F write-specific coding/adaptation backup | Missing | Still required only before relevant write research |
| EEPROM/HDD/recovery assets | Missing | BLOCKED |
| Proven restore path | Missing | BLOCKED |
| Matched HN+ reference | Missing | BLOCKED |

## Stage decision

| Stage | Decision |
|---|---|
| X0 — baseline evidence acceptance | `PASS` |
| X1 — recovery asset preservation | `BLOCKED` |
| X2 — hardware comparison | `BLOCKED` pending matched reference evidence |
| X3 — storage comparison | `BLOCKED` |
| X4 — metadata comparison | `BLOCKED` pending controlled comparison material |
| X5 — EEPROM comparison | `BLOCKED` |
| X6 — IPL/bootloader comparison | `BLOCKED` |
| X7 — factor-isolated write experiment | `BLOCKED` |
| X8 — repetition/variant review | `BLOCKED` pending additional independent units |

## Important distinction

No further vehicle session is required to confirm the already accepted source evidence.

If a write-capable experiment is proposed later, a same-session pre-write backup may still be mandatory as a rollback control. That requirement concerns operational safety and current rollback state, not distrust of the accepted evidence.

## Claim boundary

The owner attestation allows promotion of source observations to `CAPTURED`. It does not promote:

- root-cause interpretations,
- `Sample d1 == hwSample`,
- conversion feasibility,
- barrier location,
- write safety,
- release readiness.

## Decision

```text
X0 BASELINE EVIDENCE ACCEPTANCE: PASS
SOURCE RE-CAPTURE REQUIREMENT: CLOSED
READ-ONLY OFFLINE RESEARCH: ALLOWED
WRITE-CAPABLE EXPERIMENT ENTRY: BLOCKED
RECOVERY READINESS: NOT PROVEN
TECHNICAL CLAIM RELEASE GATE: BLOCKED
```