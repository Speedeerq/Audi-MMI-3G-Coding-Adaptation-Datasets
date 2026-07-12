# Write-Operation Backup Matrix — HNAV / 5F — 2026-07-12

## Rule

Historical evidence can validate prior state, but every future write requires a same-session pre-write rollback package appropriate to the affected layer.

No operation is authorized merely because its backup row is documented.

## Matrix

| Proposed operation | Same-session minimum | Deep recovery requirement | Current readiness |
|---|---|---|---|
| Gateway coding write | full Auto-Scan, 19 ID, current coding, DTC-before, session notes | known-good coding restore test | historical assets exist; fresh pre-write capture required |
| Gateway Installation List write | above + complete current list screenshots/export + adaptation map | verified original list/coding restore | historical list accepted; write not authorized |
| 5F long coding write | full Auto-Scan, 5F ID, exact current coding, DTC-before, Gateway list, Version Information | private persistence snapshot; coding restore path | historical coding exists; current 5F backup missing |
| 5F adaptation write | above + complete 5F adaptation map and target-channel before value | BEFORE/AFTER persistence dump; verified reversal | 5F adaptation map missing |
| Green Menu enable/disable write | 5F coding/adaptation before, exact channel/value, Auto-Scan, DTC | persistence diff preferred | existing visible state known; no new write proposed |
| Map/database update | 5F identity/train/region, current map, FSC file inventory, DTC, package hashes | HDD image and persistence/FSC backup strongly required | HDD image missing |
| Same-train HNAV firmware/SWDL | full current diagnostic/coding/adaptation set, exact package manifest/hashes, stable power record | exact same-train recovery package, persistence/FSC backup, HDD image, emergency image inventory, bench recovery plan | exact K0257 package not located; blocked |
| HDD replacement or filesystem write | current identity, partition table, mounts, disk health/read-error record | full raw image + ddrescue mapfile + SHA-256 + second verified copy + test clone | missing; blocked |
| EEPROM write | board/chip identity, programmer settings, voltage, two matching reads | immutable original image + hashes + tested bench restore | missing; blocked |
| NOR/IPL/IFS/EFS write | all diagnostic and persistence backups, original image inventory, target offsets and sizes | complete NOR image or exact original component images, emergency chain, bench boot/restore | missing; blocked |
| Custom IFS/EFS firmware | original package and image hashes, extraction/repack round-trip tests | byte-valid original recovery set, spare/bench boot test, rollback media | missing; blocked |
| HNAV → HN+ cross-generation experiment | all rows above | target HNAV HDD/EEPROM/NOR + R3/R4 HN+ donor + matched metainfo/image comparison + bench-only restore proof | blocked |

## Operation-specific acceptance gates

### 1. Gateway coding or Installation List

Required:

```text
Auto-Scan before
19 controller identification
19 coding before
Installation List before
19 adaptation map
DTC before
session metadata
explicit rollback value/file
```

A Gateway write does not require an HDD image, but it does require an exact current configuration backup and a tested diagnostic connection.

### 2. 5F coding

Required:

```text
Auto-Scan before
5F controller identity
5F coding before
5F DTC before
Version Information
Gateway Installation List
MOST/device context
session voltage/tool metadata
```

Preferred:

```text
private read-only persistence snapshot
5F adaptation map
screenshots of affected UI state
```

### 3. 5F adaptation

Required in addition to the coding package:

```text
complete adaptation/control-module map
exact target channel identifier
before value
expected allowed range/source
reversal procedure
BEFORE persistence snapshot
```

A screenshot of one channel is not a complete adaptation backup.

### 4. Map/database update

Required:

```text
train and region
current map/database identifiers
HDD partition and free-space inventory
FSC filename/status inventory
package identity and cryptographic hash manifest
DTC-before
stable power plan
```

Deep recovery:

```text
full HDD image
persistence/FSC private backup
same-region package provenance
```

### 5. Same-train firmware update

Required:

```text
exact current train and actual /etc/hwSample
complete current coding/adaptation backup
exact intended package and metainfo2
full package file inventory and hashes
component/image applicability review
emergency image inventory
stable external power
post-write validation and rollback decision points
```

The package must be an exact compatible source. A filename from a forum or catalogue is not enough.

### 6. HDD imaging/restoration

Acquisition set:

```text
raw whole-disk image
mapfile
source model/serial kept privately
partition table
read-error report
SHA-256
second verified copy
read-only analysis copy
```

The source disk must not be mounted read/write during acquisition.

### 7. EEPROM or NOR

Required:

```text
board/chip photographs
chip marking and capacity
programmer/adapter/software version
read voltage/mode
read 1 hash
read 2 hash
binary equality result
immutable master copy
working copy
bench restore result
```

### 8. HNAV → HN+

Minimum research package before any write consideration:

```text
Target HNAV:
  actual hwSample
  HDD layout and full image
  persistence
  EEPROM
  NOR/IPL/IFS inventory
  exact HNAV package/metainfo

Reference HN+:
  R3 or R4 AU3G 9498 dataset
  actual hwSample
  board/component inventory
  HDD layout/image
  EEPROM/NOR where permitted
  exact package/metainfo

Environment:
  spare or bench unit
  stable laboratory power
  recovery media and programmer
  documented stop conditions
```

## Decision

```text
BACKUP REQUIREMENTS: DEFINED
EXISTING OWNER EVIDENCE: USEFUL BUT NOT FULL ROLLBACK
WRITE-SPECIFIC SAME-SESSION BACKUPS: REQUIRED
HNAV → HN+ WRITE ENTRY: BLOCKED
```
