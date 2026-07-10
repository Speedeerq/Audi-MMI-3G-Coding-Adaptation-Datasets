# Evidence Intake Execution Guide

This folder defines the operator-facing workflow for using evidence intake templates together with the validation controls.

This is review-first documentation. It does not create evidence records, does not change schemas, does not change templates and does not promote technical claims.

## Purpose

The guide helps an operator:

- choose the correct intake template
- copy a template into a controlled working location
- replace placeholders only with sanitized project data
- run local syntax and structure checks
- prepare a review handoff
- stop when evidence, sanitization or schema validation is incomplete

## Scope

This guide covers process execution only.

It may reference:

- `templates/evidence_intake/`
- `validation/evidence_intake/`
- local git inspection commands
- review handoff notes

## Non-goals

This guide does not define:

- vehicle-specific procedures
- diagnostic values
- coding values
- adaptation values
- access material
- binary packages
- release content
- schema changes
- template changes

## Files

| File | Purpose |
|---|---|
| `OPERATOR_FLOW.md` | Step-by-step intake execution workflow |
| `LOCAL_COMMANDS.md` | Local commands for inspection and review preparation |
| `REVIEW_HANDOFF.md` | Review handoff format after local checks |

## Required operating mode

Use this workflow in review-first mode:

1. Inspect the current repository state.
2. Select a template.
3. Create a controlled working copy outside protected source folders.
4. Replace placeholders only after sanitization review.
5. Run syntax and structure checks.
6. Run public safety checks.
7. Prepare review handoff.
8. Do not promote claims during execution.

## Boundary

Successful local execution means the intake package is ready for review.

It does not mean the evidence claim is accepted, technically proven or release-ready.
