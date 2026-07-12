# HN+ AU3G Physical Reference Intake Template

## Reference identity

```text
reference_id:
source_owner_permission:
source_class: PRIVATE / PUBLIC / CUSTOMER-SUPPLIED
vehicle_model:
vehicle_platform:
model_year:
market_region:
```

## 5F diagnostic identity

```text
address: 5F
part_no_sw:
part_no_hw:
component:
revision:
software_level:
train:
MU_version:
platform_variant:
actual_hwSample:
HMI_type:
HMI_region:
capture_tool_and_version:
capture_date:
```

## Required evidence files

```text
REFERENCE_<ID>/
├── OWNER_PERMISSION.md
├── 5F_AUTOSCAN_SANITIZED.txt
├── 5F_CONTROLLER_ID_SANITIZED.txt
├── VERSION_INFORMATION.jpg
├── RED_MENU_ID_01.jpg
├── VARIANT_DUMP_PRIVATE.txt
├── HDD_PARTITION_TABLE.txt
├── MOUNTS_AND_DF.txt
├── UNIT_LABEL_TOP.jpg
├── UNIT_LABEL_BOTTOM.jpg
├── PCB_TOP.jpg
├── PCB_BOTTOM.jpg
├── COMPONENT_MARKINGS.md
├── FIRMWARE_PACKAGE_MANIFEST.md
├── METAINFO2_PRIVATE_REFERENCE.txt
├── HASHES_SHA256.txt
└── REVIEW_HANDOFF.md
```

Optional high-assurance private assets:

```text
HDD image + mapfile
persistence dump
EEPROM reads
NOR reads
exact firmware payload inventory
bench restore report
```

## Component inventory

| Component | Marking / part | Evidence file | Status |
|---|---|---|---|
| CPU |  |  | TO_CAPTURE |
| RAM |  |  | TO_CAPTURE |
| NOR/flash |  |  | TO_CAPTURE |
| FPGA |  |  | TO_CAPTURE |
| MOST controller |  |  | TO_CAPTURE |
| HDD/storage |  |  | TO_CAPTURE |
| display |  |  | TO_CAPTURE |
| control panel |  |  | TO_CAPTURE |

## Firmware image inventory

| Image class | Present | Variant/sample | Size | SHA-256 | Notes |
|---|---:|---|---:|---|---|
| IPL |  |  |  |  |  |
| FPGA |  |  |  |  |  |
| FPGA emergency |  |  |  |  |  |
| IFS emergency |  |  |  |  |  |
| IFS root |  |  |  |  |  |
| EFS extended |  |  |  |  |  |
| EFS system |  |  |  |  |  |
| EFS persist |  |  |  |  |  |

## Acceptance decision

```text
matching_grade: R0 / R1 / R2 / R3 / R4
evidence_complete:
privacy_review:
usable_for_metadata_comparison:
usable_for_hardware_comparison:
usable_for_storage_comparison:
usable_for_recovery planning:
write_authorization: NO
reviewer_notes:
```
