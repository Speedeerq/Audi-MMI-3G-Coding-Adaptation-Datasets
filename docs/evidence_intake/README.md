# Evidence Intake Navigation Index

This document is the navigation index for the evidence intake workflow.

It links the existing schema, template, validation and execution-guide layers without changing them.

## Operating boundary

This index is review-first documentation only.

It does not:

- create evidence records
- replace schema validation
- replace manual review
- promote technical claims
- define vehicle-specific procedures
- publish private or sensitive project data
- change templates
- change schemas
- change validation gates
- change execution commands
- change release content

## Workflow map

| Layer | Location | Purpose |
|---|---|---|
| Schemas | `schemas/` | Define expected record structure and validation rules |
| Templates | `templates/evidence_intake/` | Provide placeholder-only intake starting points |
| Validation controls | `validation/evidence_intake/` | Define safety, placeholder, syntax, structure and manual review gates |
| Execution guide | `docs/evidence_intake_execution/` | Define operator-side flow and local review commands |
| Navigation index | `docs/evidence_intake/README.md` | Show how the layers connect |

## Recommended reading order

1. `schemas/README.md`
2. `templates/evidence_intake/README.md`
3. `validation/evidence_intake/README.md`
4. `docs/evidence_intake_execution/README.md`
5. `docs/evidence_intake/README.md`

## Operator flow summary

Use the evidence intake system in this order:

1. Choose the record type.
2. Select the matching template.
3. Create a controlled working copy.
4. Replace placeholders only with sanitized project data.
5. Keep uncertainty visible when evidence is incomplete.
6. Run local syntax or structure checks.
7. Run public safety checks.
8. Prepare a review handoff.
9. Wait for manual review before accepting the record.
10. Use claim-promotion gates only when the required evidence review has passed.

## Protected areas

Do not modify these areas from an intake execution branch unless the branch scope explicitly allows it:

```text
schemas/
templates/
validation/evidence_intake/
E3_EVIDENCE_COLLECTION_CAMPAIGNS.md
README.md
CHANGELOG.md
09_TEST_LOGS/
13_RELEASE/
```

## Public repository safety boundary

Before any intake record is proposed for public review, verify that it does not contain:

- complete private identifiers
- customer personal data
- private file paths
- access material
- unpublished package content
- unreviewed diagnostic material
- technical values that were not approved for publication
- private or proprietary links

## Status boundary

Use conservative statuses while evidence is incomplete:

```text
UNKNOWN
TO_VERIFY
HYPOTHESIS
BLOCKED
PARTIAL
TO_CAPTURE
```

Do not treat a template, local command result, parse result, file existence or checklist completion as proof of a technical claim.

## Handoff boundary

A handoff means the intake package is ready for manual review.

It does not mean the evidence claim is accepted or technically proven.

## Maintenance rule

Keep this index small.

If a future stage needs detailed procedure changes, update the relevant stage document instead of expanding this index into a second procedure manual.
