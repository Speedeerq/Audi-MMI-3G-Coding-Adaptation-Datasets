# HNAV → HN+ Experiment Entry Gate Reassessment — Recovery Research — 2026-07-12

## Trigger

A search of owner-supplied files and public technical sources produced:

- a recovery asset catalog,
- a write-operation backup matrix,
- an approved read-only HNAV inventory profile,
- a public HN+ AU3G 9498 software/package reference,
- a physical HN+ donor intake specification.

## New evidence/resources

| Item | Result |
|---|---|
| Existing target diagnostic/config evidence | available and owner-attested |
| Gateway rollback evidence | substantial historical set available |
| Actual target `/etc/hwSample` | still missing |
| Target HDD partition inventory | capture tooling ready; result missing |
| Target full HDD image | missing |
| Target persistence snapshot | tool candidate located; result missing |
| Exact target HNAV K0257 package | not located in available files |
| Target EEPROM/NOR image | missing |
| HN+ AU3G comparison class | identified as A4/A5/Q5/Q7 variant class 9498 |
| HN+ software reference | R1 available: MU9498/K0942_6 package research |
| Matched physical EU HN+ reference | missing |
| Backup requirements by operation | defined |

## Stage reassessment

| Stage | Previous | New decision |
|---|---|---|
| X0 — baseline evidence | PASS | PASS |
| X1 — recovery asset preservation | BLOCKED | `PARTIAL READY`: catalog and capture tooling ready; HDD/EEPROM/NOR assets absent |
| X2 — hardware comparison | BLOCKED | `PARTIAL`: correct HN+ 9498 class and R1 software reference identified; physical R2–R4 dataset absent |
| X3 — storage comparison | BLOCKED | BLOCKED pending target and HN+ HDD inventories/images |
| X4 — metadata comparison | BLOCKED | `PARTIAL`: HN+ metainfo format/package reference available; exact target HNAV package/metainfo missing |
| X5 — EEPROM comparison | BLOCKED | BLOCKED |
| X6 — IPL/bootloader comparison | BLOCKED | `PARTIAL REFERENCE ONLY`: HN+ image layout known; target IPL/NOR missing |
| X7 — factor-isolated write experiment | BLOCKED | BLOCKED |
| X8 — repetition/variant review | BLOCKED | BLOCKED pending independent physical units |

## What can proceed now

- run the approved read-only target inventory,
- acquire a private target HDD image and mapfile,
- capture a private persistence snapshot after separate script review,
- locate the exact original HNAV K0257 package and record hashes,
- recruit an HN+ AU3G 9498 reference using the intake template,
- perform offline metainfo/layout comparison after both source sets exist.

## What cannot proceed

- any firmware/SWDL write,
- EEPROM or NOR write,
- HDD restore/repartition,
- emergency-update test,
- HNAV-to-HN+ cross-flash,
- compatibility or feasibility claim.

## Decision

```text
RECOVERY ASSET SEARCH: COMPLETE FOR CURRENT SOURCES
RECOVERY CAPTURE TOOLING: READY
TARGET RECOVERY ASSETS: PARTIAL / NOT ACQUIRED
HN+ SOFTWARE REFERENCE: R1 AVAILABLE
MATCHED PHYSICAL HN+ REFERENCE: MISSING
WRITE-OPERATION BACKUP MATRIX: READY
WRITE-CAPABLE EXPERIMENT ENTRY: BLOCKED
```
