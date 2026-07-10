# Manual Validation Protocol

This protocol defines the manual review path for evidence intake records before they are accepted into the repository.

## Validation stages

### 1. Public safety review

Check that the record does not contain restricted public repository content.

This review blocks the record if it contains:

- full vehicle identifiers
- private customer data
- license plates
- private file paths
- access codes
- login strings
- proprietary URLs
- binary datasets
- raw customer logs that were not sanitized
- coding or adaptation values without explicit approval

### 2. Placeholder review

Check whether the record is still a template, a partially completed intake record or a review-ready record.

Allowed template placeholders include:

- `SAMPLE_CAMPAIGN_ID`
- `SAMPLE_BASELINE_ID`
- `SAMPLE_EVIDENCE_PACK_ID`
- `SAMPLE_RECORD_ID`
- `SAMPLE_SOURCE_FILE`
- `SAMPLE_EVIDENCE_PATH`
- `REDACTED_VIN_PARTIAL`
- `TO_CAPTURE`
- `UNKNOWN`

Placeholder content is acceptable in templates.

Placeholder content is not acceptable in final schema validation records unless the schema explicitly allows that placeholder.

### 3. Syntax or structure check

For JSON files, perform syntax parsing only.

For CSV files, check:

- header row is present
- one placeholder row is present for templates
- column order matches the intended template
- comma structure is intact

### 4. Manual evidence review

Check that every non-placeholder claim has support from a sanitized evidence source.

If evidence is missing, set the claim to:

- `UNKNOWN`
- `TO_VERIFY`
- `HYPOTHESIS`
- `BLOCKED`

Do not promote unsupported claims.

### 5. Schema validation after placeholder replacement

Run JSON Schema validation only after placeholder values are replaced with sanitized project data.

JSON syntax success is not the same as JSON Schema success.

### 6. Release gate review

Promoting a claim to `CONFIRMED` requires a separate release gate review.

A claim cannot become `CONFIRMED` only because a file parses correctly.

## Review outcomes

| Outcome | Meaning |
|---|---|
| `ACCEPT_FOR_REVIEW` | Safe to continue manual review |
| `NEEDS_SANITIZATION` | Contains data that must be redacted or replaced |
| `NEEDS_EVIDENCE` | Claim exists but evidence is missing |
| `NEEDS_SCHEMA_VALIDATION` | Placeholder replacement is complete and schema validation is pending |
| `BLOCKED_PUBLIC_SAFETY` | Cannot be committed publicly in current form |
| `BLOCKED_RELEASE_GATE` | Cannot be promoted to `CONFIRMED` |

## Operator note

Do not repair records silently during validation. Report the issue and create a controlled follow-up branch if a change is required.
