# HNAV → HN+ Experiment Entry Gate Reassessment — Recovery Research — 2026-07-12

Updated by the variant-aware hardware/source audit on 2026-07-14.

## Trigger

A search of owner-supplied files and public technical sources produced:

- a recovery asset catalog,
- a write-operation backup matrix,
- host-side SD staging, collection and validation tooling,
- a proposed read-only HNAV inventory script,
- a public HN+ AU3G 9498 software/package reference,
- a physical HN+ donor intake specification.

The later hardware audit established that host-side tooling readiness must be separated from target-side script compatibility.

## New evidence/resources

| Item | Result |
|---|---|
| Existing target diagnostic/config evidence | available and owner-attested |
| Gateway rollback evidence | substantial historical set available |
| Actual target `/etc/hwSample` | still missing |
| Host-side SD staging/collection dry run | `PASS` |
| Target launcher, interpreter and SD mount path | `TO VERIFY` for `8T1 035 664 F` |
| Target HDD partition inventory | proposed capture script exists; physical result missing |
| Target full HDD image | missing |
| Target persistence snapshot | tool candidate located; result missing |
| Exact target HNAV K0257 package | not located in available files |
| Target EEPROM/NOR image | missing |
| HN+ AU3G software-comparison candidate | identified as A4/A5/Q5/Q7 variant class 9498 |
| HN+ software reference | R1 available: MU9498/K0942_6 package research |
| HN+ global hardware architecture | `VARIANT / TO VERIFY` |
| Matched physical EU HN+ reference | missing |
| Backup requirements by operation | defined |

## Stage reassessment

| Stage | Previous | New decision |
|---|---|---|
| X0 — baseline diagnostic evidence | PASS | PASS |
| X1A — host-side package staging/collection | not separated | `PASS`: local parser and isolated dry run completed |
| X1B — target-side read-only inventory execution | treated as ready | `BLOCKED / TO VERIFY`: launcher, interpreter, command set and SD mount path not confirmed for target |
| X1C — recovery asset preservation | BLOCKED | `PARTIAL`: catalog exists; HDD/EEPROM/NOR assets absent |
| X2 — hardware comparison | BLOCKED | `PARTIAL`: HN+ 9498 software candidate identified; target and matched physical hardware datasets absent |
| X3 — storage comparison | BLOCKED | BLOCKED pending target and HN+ HDD inventories/images |
| X4 — metadata comparison | BLOCKED | `PARTIAL`: HN+ build-specific metainfo reference available; exact target HNAV package/metainfo missing |
| X5 — EEPROM comparison | BLOCKED | BLOCKED |
| X6 — IPL/bootloader comparison | BLOCKED | `PARTIAL REFERENCE ONLY`: build-specific HN+ image layout known; target IPL/NOR missing |
| X7 — factor-isolated write experiment | BLOCKED | BLOCKED |
| X8 — repetition/variant review | BLOCKED | BLOCKED pending independent physical units |

## What can proceed now

- document the exact target-unit execution prerequisites,
- compare `DrGER2/MMI3G-Info` family handling with the target identity,
- verify whether the target provides the required interpreter and commands without executing the payload,
- resolve the target SD-controller and mount-path evidence,
- locate the exact original HNAV K0257 package and record hashes,
- recruit an HN+ AU3G 9498 reference using the intake template,
- perform build-specific offline metainfo/layout comparison after both source sets exist,
- prepare an HDD acquisition plan without restoring or modifying the vehicle disk.

## What cannot proceed

- target-side inventory execution based on guessed launcher or mount paths,
- any firmware/SWDL write,
- EEPROM or NOR write,
- HDD restore/repartition,
- EFS or HMI binary replacement,
- region conversion,
- FSC signature-bypass deployment,
- emergency-update test,
- HNAV-to-HN+ cross-flash,
- compatibility or feasibility claim.

## Decision

```text
RECOVERY ASSET SEARCH: COMPLETE FOR CURRENT SOURCES
HOST-SIDE STAGING/COLLECTION TOOLING: PASS
TARGET-SIDE SCRIPT COMPATIBILITY: TO VERIFY
TARGET PHYSICAL EXECUTION: BLOCKED PENDING VARIANT VALIDATION
TARGET RECOVERY ASSETS: PARTIAL / NOT ACQUIRED
HN+ SOFTWARE REFERENCE: R1 / VARIANT-SPECIFIC
HN+ GLOBAL HARDWARE ARCHITECTURE: VARIANT / TO VERIFY
MATCHED PHYSICAL HN+ REFERENCE: MISSING
WRITE-OPERATION BACKUP MATRIX: READY AS DOCUMENTATION ONLY
WRITE-CAPABLE EXPERIMENT ENTRY: BLOCKED
```
