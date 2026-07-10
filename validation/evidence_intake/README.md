# Evidence Intake Validation

This folder defines the manual validation protocol for evidence intake records.

The documents in this folder are review-first controls. They do not modify schemas, templates, evidence records, datasets, coding, adaptations or release content.

## Scope

This validation layer checks whether an evidence intake record is safe to review and whether it is ready for later schema validation after placeholders are replaced.

It separates:

- JSON syntax checks
- JSON Schema validation after placeholder replacement
- CSV header checks
- public safety checks
- manual evidence review
- CONFIRMED release gate review

## Non-goals

This stage does not create an automated validator.

This stage does not modify:

- `schemas/`
- `templates/`
- `E3_EVIDENCE_COLLECTION_CAMPAIGNS.md`
- `README.md`
- `CHANGELOG.md`
- `09_TEST_LOGS/`
- `13_RELEASE/`
- coding, adaptation, security, dataset, baseline, log or backup directories

## Required validation order

1. Public safety review
2. Placeholder review
3. JSON syntax or CSV structure check
4. Manual evidence review
5. JSON Schema validation after placeholder replacement
6. CONFIRMED release gate review, if a claim is being promoted

## Key rule

A record may be syntactically valid JSON and still not be valid evidence.

A record may also pass placeholder review and still not be eligible for `CONFIRMED` status.

## Files

| File | Purpose |
|---|---|
| `MANUAL_VALIDATION_PROTOCOL.md` | End-to-end manual validation workflow |
| `JSON_SYNTAX_CHECKLIST.md` | Syntax-only JSON checks |
| `CSV_HEADER_CHECKLIST.md` | CSV header and placeholder row checks |
| `PUBLIC_SAFETY_CHECKLIST.md` | Public repository safety checks |
| `PLACEHOLDER_REPLACEMENT_RULES.md` | Rules for replacing template placeholders |
| `CONFIRMED_RELEASE_GATE.md` | Conditions for promoting claims to `CONFIRMED` |

## Status

Review-first documentation.
