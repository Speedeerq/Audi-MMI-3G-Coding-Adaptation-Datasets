# Schemas — CSV / JSON Data Model

## Purpose

This folder contains non-operational schemas for future structured exports and validation.

Schemas are designed for evidence records, campaign records, module dependencies, DTC baselines and UI observations.

They do not contain coding values, adaptation values, Security Access values, binary datasets, retrofit instructions or confirmed technical findings.

## Files

| File | Purpose |
|---|---|
| [evidence_pack.schema.json](evidence_pack.schema.json) | Evidence package metadata and required evidence state |
| [e3_campaign.schema.json](e3_campaign.schema.json) | E3 campaign planning and execution record structure |
| [controller_identification.schema.json](controller_identification.schema.json) | Controller/module identification record |
| [autoscan_summary.schema.json](autoscan_summary.schema.json) | Sanitized Auto-Scan summary structure |
| [dtc_baseline.schema.json](dtc_baseline.schema.json) | DTC-before baseline record |
| [ui_observation.schema.json](ui_observation.schema.json) | MMI/UI observation record |
| [module_dependency.schema.json](module_dependency.schema.json) | Module dependency matrix record |

## Status policy

| Status | Meaning |
|---|---|
| UNKNOWN | no evidence yet |
| HYPOTHESIS | research idea only |
| TO_VERIFY | evidence required |
| VARIANT | variant-scoped finding, not global |
| CONFIRMED | requires release gate and evidence |
| TO_CAPTURE | evidence missing |
| CAPTURED | evidence exists |
| PARTIAL | incomplete evidence |
| BLOCKED | blocked until evidence exists |

## Safety

Schemas validate metadata shape only.

They must not be used as instructions for vehicle changes.
