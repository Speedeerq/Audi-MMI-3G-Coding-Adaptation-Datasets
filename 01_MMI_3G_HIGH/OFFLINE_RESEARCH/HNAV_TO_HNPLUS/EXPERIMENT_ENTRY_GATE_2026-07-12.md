# HNAV → HN+ Experiment Entry Gate — 2026-07-12

## Gate purpose

Determine whether the project has enough verified baseline, recovery and comparison evidence to begin controlled experiments.

## Current inputs

| Input | State | Evidence |
|---|---|---|
| Schema-based evidence intake | AVAILABLE | `evidence/intake/MMI3GHIGH_HNAV_BASELINE_001/` |
| Sanitized controller identity record | PARTIAL | Project-note identifiers; raw source not attached |
| Baseline review | AVAILABLE | `01_MMI_3G_HIGH/BASELINES/HNAV_8T1035664F_K0257_D1/INTAKE_REVIEW_2026-07-12.md` |
| Barrier hypothesis matrix | AVAILABLE | `HYPOTHESIS_MATRIX.md` |
| Experiment matrix | AVAILABLE | `EXPERIMENT_MATRIX.md` |
| Field capture handoff | AVAILABLE | `FIELD_CAPTURE_HANDOFF.md` |
| Full Auto-Scan | MISSING | None attached |
| Raw controller-identification block | MISSING | None attached |
| DTC-before baseline | MISSING | None attached |
| Red Menu identity capture | MISSING | None attached |
| EEPROM immutable backup | MISSING | No verified read/restore evidence |
| HDD image or partition report | MISSING | No verified read/restore evidence |
| IPL/bootloader recovery path | UNKNOWN | No method or reference evidence |
| Matched HN+ reference unit | MISSING | No comparison package attached |
| Package metadata source set | NOT REVIEWED | Provenance and integrity not established |

## Stage decisions

| Stage | Decision | Reason |
|---|---|---|
| X0 — baseline identity capture | `READY TO CAPTURE` | Read-only evidence can be gathered safely |
| X1 — recovery asset preservation | `BLOCKED` | Read and restore methods are not documented or proven |
| X2 — hardware comparison | `BLOCKED` | Matched HN+ reference evidence is missing |
| X3 — storage comparison | `BLOCKED` | Partition reports or images are missing |
| X4 — metadata comparison | `BLOCKED` | Package source set has not passed provenance review |
| X5 — EEPROM comparison | `BLOCKED` | Immutable backups and matched reference are missing |
| X6 — IPL/bootloader comparison | `BLOCKED` | Safe extraction and recovery paths are unknown |
| X7 — factor-isolated write experiment | `BLOCKED` | X0–X6 prerequisites and release-gate approval are absent |
| X8 — repetition/variant review | `BLOCKED` | No first controlled result exists |

## Allowed next work

Only these actions are admitted by the gate:

1. perform the read-only field capture described in `FIELD_CAPTURE_HANDOFF.md`,
2. keep raw evidence outside the public repository,
3. produce sanitized copies,
4. calculate checksums and document provenance,
5. review safe backup and recovery methods without writing to the unit,
6. identify a matched HN+ comparison source,
7. update the evidence package after manual review.

## Prohibited next work

The gate does not authorize:

- firmware, SWDL or emergency-update execution,
- EEPROM modification,
- HDD repartitioning or image restoration,
- IPL/bootloader replacement,
- package-eligibility bypass,
- Security Access or login experiments,
- dataset or parameterization writes,
- coding or adaptation changes,
- multi-variable experiments.

## Decision

```text
EXPERIMENT ENTRY GATE: BLOCKED
READ-ONLY FIELD CAPTURE: ALLOWED
WRITE-CAPABLE EXPERIMENTS: NOT AUTHORIZED
RECOVERY READINESS: NOT PROVEN
```

The next admissible transition is from `READY TO CAPTURE` to `CAPTURE SET UNDER REVIEW`, not to an experiment execution state.
