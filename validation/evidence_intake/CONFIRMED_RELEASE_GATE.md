# CONFIRMED Release Gate

This document defines the minimum conditions for promoting a claim to `CONFIRMED`.

## Principle

`CONFIRMED` is a release-level status.

It must not be used because a file exists, parses as JSON, has a CSV header, or contains a plausible note.

## Required conditions

A claim may be promoted to `CONFIRMED` only when all of the following are true:

- evidence is captured
- evidence is sanitized
- source file references are available
- manual review has passed
- public safety review has passed
- schema validation has passed when applicable
- the claim is specific and limited
- no contradictory evidence is known
- reviewer notes explain what was confirmed

## Not sufficient

The following are not enough for `CONFIRMED`:

- template exists
- JSON syntax passes
- CSV header matches
- placeholder exists
- hypothesis sounds plausible
- module name appears in a scan
- user interface item is visible
- a file was generated

## Safer statuses

Use safer statuses when evidence is incomplete:

```text
UNKNOWN
TO_VERIFY
HYPOTHESIS
BLOCKED
PARTIAL
TO_CAPTURE
```

## Blockers

Do not promote a claim when:

- evidence is missing
- sanitization is incomplete
- the claim depends on private or proprietary material
- the claim depends on raw Security Access material
- the claim would expose coding or adaptation values that were not approved for publication
- the result was inferred without direct evidence

## Operator rule

When the release gate is not clearly passed, do not use `CONFIRMED`.
