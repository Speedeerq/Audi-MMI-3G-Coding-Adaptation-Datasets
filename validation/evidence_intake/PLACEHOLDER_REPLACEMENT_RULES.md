# Placeholder Replacement Rules

Templates use placeholders to avoid committing real vehicle data, private data or unsupported claims.

## Template placeholders

Common placeholders include:

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

## Replacement requirements

Before schema validation, replace placeholders with sanitized project data.

Replacement values must:

- match the expected schema type
- match required formats or patterns
- avoid full vehicle identifiers
- avoid private customer data
- avoid private local paths
- avoid proprietary links
- preserve uncertainty where evidence is missing

## Status replacement rules

Do not replace `UNKNOWN`, `TO_VERIFY`, `HYPOTHESIS` or `BLOCKED` with `CONFIRMED` unless the release gate has passed.

Do not use `VERIFIED` as a substitute for `CONFIRMED` unless a future schema explicitly defines that status.

## Sanitization marker

A field such as:

```json
"sanitized": false
```

means the record is not yet sanitized.

Set sanitization fields only after manual sanitization review.

## Boundary

Placeholder replacement prepares a record for validation.

It does not confirm the technical claim.
