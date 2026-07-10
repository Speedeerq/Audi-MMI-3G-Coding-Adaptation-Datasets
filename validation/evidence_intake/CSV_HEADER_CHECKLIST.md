# CSV Header Checklist

This checklist is for CSV evidence intake templates and CSV intake records.

## Template CSV checks

For each CSV template:

- header row exists
- one placeholder row exists
- column count is consistent between header and placeholder row
- required placeholder identifiers are present where expected
- empty fields are intentional and documented by the related schema or README
- no real vehicle data is present
- no private file paths are present
- no proprietary URLs are present

## Intake CSV checks

For completed intake CSV records:

- header row exists
- column count is consistent across rows
- placeholders have been replaced where required
- partial vehicle identifiers are redacted
- public safety review is complete
- source references are sanitized
- evidence status is not promoted without review

## Acceptable template placeholders

Examples:

```text
SAMPLE_CAMPAIGN_ID
SAMPLE_BASELINE_ID
SAMPLE_MODULE_ADDRESS
SAMPLE_MODULE_NAME
SAMPLE_SOURCE_FILE
SAMPLE_EVIDENCE_PATH
REDACTED_VIN_PARTIAL
TO_CAPTURE
UNKNOWN
```

## Boundary

CSV structure checks do not confirm technical behavior.

CSV structure checks do not authorize `CONFIRMED` status.
