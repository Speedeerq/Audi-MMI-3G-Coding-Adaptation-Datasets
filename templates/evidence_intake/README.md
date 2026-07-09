# Evidence Intake Templates

This folder contains placeholder-only templates for evidence intake records.

These files are for review-first data preparation only. They are not vehicle instructions and do not prove any technical behavior.

## Scope

Allowed content:

- placeholder identifiers
- sanitized metadata placeholders
- start statuses such as `TO_CAPTURE`, `UNKNOWN`, `PARTIAL`, `BLOCKED`, `HYPOTHESIS`, `TO_VERIFY`
- structural fields matching the schemas in `schemas/`

Not allowed in these templates:

- real vehicle data
- complete vehicle identifiers
- coding values
- adaptation values
- access codes
- binary datasets
- private customer data
- proprietary links
- release-readiness claims

## Placeholder policy

Use placeholders such as:

```text
SAMPLE_CAMPAIGN_ID
SAMPLE_BASELINE_ID
SAMPLE_EVIDENCE_PACK_ID
SAMPLE_RECORD_ID
SAMPLE_AUTOSCAN_ID
SAMPLE_DTC_BASELINE_ID
SAMPLE_OBSERVATION_ID
SAMPLE_DEPENDENCY_ID
SAMPLE_MODULE_ADDRESS
SAMPLE_MODULE_NAME
SAMPLE_SOURCE_FILE
SAMPLE_EVIDENCE_PATH
REDACTED_VIN_PARTIAL
TO_CAPTURE
UNKNOWN
```

Before validating a completed record against a schema, replace placeholders with sanitized project data.

## Template mapping

| Template | Format | Schema |
|---|---|---|
| `evidence_pack.template.json` | JSON template | `schemas/evidence_pack.schema.json` |
| `e3_campaign.template.json` | JSON template | `schemas/e3_campaign.schema.json` |
| `controller_identification.template.json` | JSON template | `schemas/controller_identification.schema.json` |
| `autoscan_summary.template.json` | JSON template | `schemas/autoscan_summary.schema.json` |
| `dtc_baseline.template.json` | JSON template | `schemas/dtc_baseline.schema.json` |
| `ui_observation.template.json` | JSON template | `schemas/ui_observation.schema.json` |
| `module_dependency.template.json` | JSON template | `schemas/module_dependency.schema.json` |
| `controller_identification.template.csv` | CSV template | `schemas/controller_identification.schema.json` |
| `autoscan_summary.template.csv` | CSV template | `schemas/autoscan_summary.schema.json` |
| `dtc_baseline.template.csv` | CSV template | `schemas/dtc_baseline.schema.json` |
| `ui_observation.template.csv` | CSV template | `schemas/ui_observation.schema.json` |
| `module_dependency.template.csv` | CSV template | `schemas/module_dependency.schema.json` |

## Review-first rule

Do not treat any completed template as accepted evidence until it passes manual review, sanitization review and the relevant schema validation.
