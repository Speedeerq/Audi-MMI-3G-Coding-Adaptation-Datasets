# HNAV → HN+ Experiment Matrix

## Purpose

Order the research so that low-risk, read-only evidence is exhausted before any write-capable experiment is considered.

## Stage matrix

| Stage | Objective | Allowed actions | Required inputs | Output | Entry status |
|---|---|---|---|---|---|
| X0 | Freeze baseline identity | Read-only MMI version, Red Menu identity, controller ID, Auto-Scan and DTC capture | Stable power, sanitized intake workflow | Corroborated unit profile | READY TO CAPTURE |
| X1 | Preserve recovery assets | Private immutable read-only backups and checksums using an approved method | Proven backup method, storage, provenance log | Recovery manifest and hashes | BLOCKED — method not documented |
| X2 | Hardware comparison | Visual board inventory, labels and component comparison without modification | Clear board photos and matched HN+ reference | Hardware-difference matrix | BLOCKED — reference evidence missing |
| X3 | Storage comparison | Read-only device and partition inventory; no repartitioning | Private storage image or partition report from both families | HDD-layout difference matrix | BLOCKED — images/reports missing |
| X4 | Metadata comparison | Offline diff of package manifests and `metainfo2.txt`-related eligibility fields | Legally obtained package metadata with provenance | Package-eligibility matrix | BLOCKED — source set not reviewed |
| X5 | EEPROM comparison | Read-only backup and annotated diff; no writes | Verified read method, matched reference, checksums | Candidate identity-field matrix | BLOCKED — backup and reference missing |
| X6 | IPL/bootloader comparison | Read-only version/hash/log inventory where available | Safe extraction method and matched reference | Boot-chain difference matrix | BLOCKED — method/reference missing |
| X7 | Factor-isolated write experiment | Change one reviewed variable only, with rollback | Completed X0–X6, recovery proof, release-gate approval | Controlled acceptance/rejection result | BLOCKED |
| X8 | Repetition and variant review | Repeat on matched or independent unit contexts | Successful rollback and complete logs | Variant classification | BLOCKED |

## Mandatory stop conditions

Stop before any write-capable stage when any of the following is true:

- the unit identity is still based only on project notes,
- a full pre-change DTC and controller baseline is missing,
- the original EEPROM or storage state cannot be restored,
- the bootloader recovery route is unknown,
- package provenance or integrity is uncertain,
- more than one variable would change in the same experiment,
- power stability is not controlled,
- the expected failure mode could leave the unit non-bootable,
- the result cannot be tied to timestamps, hashes and evidence files.

## Experiment design rule

Every future write-capable experiment must define:

1. hypothesis under test,
2. single independent variable,
3. unchanged control variables,
4. exact pre-state hashes and identifiers,
5. observable acceptance/rejection criterion,
6. abort criterion,
7. recovery procedure already proven on the same baseline,
8. post-state capture,
9. DTC and boot behavior,
10. rollback verification.

## Current decision

Stages `X0` is ready for physical capture. Stages `X1` through `X8` remain blocked until their stated inputs exist and pass manual review.
