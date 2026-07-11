# HNAV → HN+ Field Capture Handoff

## Objective

Collect the minimum read-only evidence required to leave the planning-only state.

## Capture set A — visible identity

- MMI version screen photo
- Red Engineering Menu software-train page
- Red Engineering Menu Variant/RadioUnit/MU/Sample page
- unit label photo with private identifiers excluded or redacted

## Capture set B — diagnostic identity

- full Auto-Scan before changes
- 5F, 56 and 07 presence/absence
- raw controller-identification block for the exposed infotainment controller
- DTC-before block
- Gateway installation-list context
- tool name, version and interface
- capture timestamp and ignition state

## Capture set C — recovery-readiness inventory

This set records only whether a safe method exists. Do not perform a write operation from this handoff.

- EEPROM read method known: YES / NO
- EEPROM restore method proven on this unit: YES / NO
- HDD image or partition-inventory method known: YES / NO
- storage restore method proven: YES / NO
- IPL/bootloader recovery route known: YES / NO
- stable external power available: YES / NO
- second reference or donor unit available: YES / NO

Any `NO` keeps dependent experiments blocked.

## File naming

```text
PRIVATE_RAW/HNAV_TO_HNPLUS_001/
├── autoscan_before_raw.txt
├── controller_identification_raw.txt
├── dtc_before_raw.txt
├── gateway_context_raw.txt
├── capture_context.md
├── checksums.sha256
└── media/
    ├── 001_mmi_version.jpg
    ├── 002_red_menu_sw_train.jpg
    ├── 003_red_menu_variant_radiounit_mu_sample.jpg
    └── 004_unit_label_redacted.jpg

PUBLIC_SANITIZED/HNAV_TO_HNPLUS_001/
├── autoscan_before_sanitized.txt
├── controller_identification_sanitized.txt
├── dtc_before_sanitized.txt
├── gateway_context_sanitized.txt
├── capture_context_sanitized.md
└── media/
    ├── 001_mmi_version.jpg
    ├── 002_red_menu_sw_train.jpg
    ├── 003_red_menu_variant_radiounit_mu_sample.jpg
    └── 004_unit_label_redacted.jpg
```

The private raw folder must remain outside the public repository.

## Sanitization checklist

Remove or redact:

- full VIN,
- registration plate,
- owner/customer data,
- location,
- phone and email,
- private usernames and paths,
- cloud-share identifiers,
- private or proprietary URLs,
- access values and recovery secrets.

## Handoff result statuses

```text
CAPTURE_SET_COMPLETE
PARTIAL_CAPTURE
BLOCKED_NO_SAFE_METHOD
NEEDS_SANITIZATION
NEEDS_CORROBORATION
```

A complete capture set still does not confirm the location of the HNAV-to-HN+ barrier. It only enables the next review stage.
