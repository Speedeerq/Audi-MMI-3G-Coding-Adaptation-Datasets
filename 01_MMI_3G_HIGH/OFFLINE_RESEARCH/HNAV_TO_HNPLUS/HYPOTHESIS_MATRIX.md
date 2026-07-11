# HNAV → HN+ Barrier Hypothesis Matrix

## Status rule

Every row is a research hypothesis. None is a coding, update or conversion instruction.

| ID | Candidate barrier | Hypothesis | Evidence currently available | Evidence required to support | Evidence required to reject | Risk if wrong | Status |
|---|---|---|---|---|---|---|---|
| H2P-001 | Physical hardware | HN+ requires hardware resources or peripherals absent from the HNAV board or unit configuration | Part number and HNAV identity from project notes only | Board revision, SoC/RAM/flash/storage/peripheral inventory and matched HN+ comparison | Matched hardware inventory showing equivalent required components and buses | CRITICAL | HYPOTHESIS |
| H2P-002 | `hwSample` / variant identity | Update or runtime logic rejects HN+ because the unit advertises an incompatible sample or variant identity | Project notes report Sample `d1`, Variant `9307`, RadioUnit `9471` | Raw identity capture plus correlation across multiple HNAV and HN+ units | Demonstrated HN+ acceptance on the same identity without changing other layers | HIGH | HYPOTHESIS |
| H2P-003 | EEPROM | One or more EEPROM identity/configuration fields define the software family, feature set or package eligibility | No public EEPROM evidence attached | Immutable EEPROM backup, annotated diff against matched HN+ reference, checksum and provenance | Equivalent EEPROM identity/configuration with different HNAV/HN+ acceptance outcome | CRITICAL | HYPOTHESIS |
| H2P-004 | HDD layout | HN+ expects a partition table, filesystem, boot content or capacity/layout not present on HNAV | HDD-backed HNAV context known; no partition evidence attached | Read-only partition table, filesystem labels, sizes, hashes and matched HN+ comparison | Same relevant layout successfully supporting both families or rejection occurring before storage access | HIGH | HYPOTHESIS |
| H2P-005 | `metainfo2.txt` eligibility | Package metadata selects hardware/sample/variant targets and blocks HNAV before payload execution | General update-package architecture assumption only | Offline metadata diff across known HNAV/HN+ packages, exact eligibility fields, observed rejection stage | Package passes metadata eligibility yet fails at a lower layer under controlled observation | HIGH | HYPOTHESIS |
| H2P-006 | IPL / bootloader | The boot chain lacks an HN+-compatible loader, verification path, driver set or memory map | No IPL/bootloader capture attached | Read-only loader/version inventory, hashes, startup logs where available and matched HN+ comparison | Equivalent bootloader chain accepting HN+ on matched hardware and identity | CRITICAL | HYPOTHESIS |
| H2P-007 | Multi-layer interaction | Conversion requires a coherent combination of hardware, identity, storage layout, package metadata and boot-chain state | Multiple plausible layers; no controlled comparison | Factor-isolated experiment series with one variable changed at a time and complete recovery path | One isolated layer consistently explains acceptance/rejection across matched comparisons | CRITICAL | HYPOTHESIS |

## Evidence quality requirements

A useful comparison must record:

- exact unit part number and board revision,
- software train and visible identity fields,
- source and checksum of every private backup,
- storage-device model and partition inventory,
- package provenance and metadata hash,
- bootloader/IPL version or hash where safely readable,
- test order and power state,
- DTC and startup behavior before and after,
- recovery result.

## Interpretation constraints

- Correlation between a field and HN+ identity does not prove that the field is the gate.
- A package rejection message does not prove whether the rejection originated in metadata, bootloader or runtime logic.
- A successful emergency update between other software families does not prove HNAV-to-HN+ compatibility.
- A modified unit cannot serve as a clean baseline unless its full history and backups are available.
- A single successful unit is variant evidence, not a global result.
