# Review Handoff

This document defines the handoff format for evidence intake execution review.

Use this after local checks are complete.

## Handoff header

```text
Review stage: EVIDENCE_INTAKE_EXECUTION
Branch: BRANCH_NAME
Base branch: main
Operator: OPERATOR_NAME_OR_ROLE
Date: YYYY-MM-DD
Scope: SHORT_SCOPE_DESCRIPTION
```

## Changed files

List every changed file:

```text
CHANGED_FILE_1
CHANGED_FILE_2
CHANGED_FILE_3
```

Expected rule:

- every changed file must belong to the approved stage scope
- unrelated files must be removed or moved to a separate controlled branch

## Checks performed

Use this checklist:

```text
[ ] branch confirmed
[ ] working tree clean before review
[ ] diff stat reviewed
[ ] changed file list reviewed
[ ] public safety search completed
[ ] JSON syntax checked where applicable
[ ] CSV structure checked where applicable
[ ] placeholder review completed
[ ] manual evidence review completed
[ ] schema validation run where applicable
[ ] unresolved gaps documented
```

## Public safety result

Use one:

```text
PUBLIC_SAFE_FOR_REVIEW
NEEDS_SANITIZATION
BLOCKED_PUBLIC_SAFETY
```

Add notes:

```text
Public safety notes:
- NOTE_1
- NOTE_2
```

## Evidence status result

Use conservative status when evidence is incomplete:

```text
UNKNOWN
TO_VERIFY
HYPOTHESIS
BLOCKED
PARTIAL
TO_CAPTURE
```

Add notes:

```text
Evidence notes:
- NOTE_1
- NOTE_2
```

## Schema validation result

Use one:

```text
NOT_APPLICABLE
PENDING_PLACEHOLDER_REPLACEMENT
PENDING_SCHEMA_VALIDATION
SCHEMA_VALIDATION_PASSED
SCHEMA_VALIDATION_FAILED
```

Add notes:

```text
Schema notes:
- NOTE_1
- NOTE_2
```

## Reviewer decision requested

Use one:

```text
ACCEPT_FOR_REVIEW
NEEDS_SANITIZATION
NEEDS_EVIDENCE
NEEDS_SCHEMA_VALIDATION
BLOCKED_PUBLIC_SAFETY
BLOCKED_RELEASE_GATE
```

## Final operator boundary

The handoff does not approve the evidence claim.

It only records that the operator has prepared the intake package for manual review.
