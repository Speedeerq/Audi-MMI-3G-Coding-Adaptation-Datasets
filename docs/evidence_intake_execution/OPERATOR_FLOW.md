# Operator Flow

This document defines the manual operator sequence for preparing an evidence intake package.

## Starting conditions

Before starting, confirm:

- the repository working tree is clean
- the operator is on the intended branch
- the latest remote state has been fetched
- the target template exists
- the related validation checklist exists
- no real private data is being introduced

## Step 1 — Identify the intake type

Choose the intake type before editing anything.

Common intake types:

- evidence pack
- campaign record
- controller identification
- autoscan summary
- DTC baseline
- user interface observation
- module dependency note

If the intake type is unclear, stop and create a review question instead of guessing.

## Step 2 — Select the template

Select the matching file from:

```text
templates/evidence_intake/
```

Do not edit the source template directly.

## Step 3 — Create a working copy

Create a controlled copy for the specific review task.

The working copy must not contain real private identifiers, unreviewed diagnostic material or raw unsanitized logs.

## Step 4 — Replace placeholders carefully

Replace placeholders only when the replacement value is:

- sanitized
- necessary for review
- compatible with the expected field type
- limited to the minimum useful detail
- supported by available evidence or explicitly marked uncertain

When evidence is missing, keep uncertainty visible.

Use conservative statuses such as:

```text
UNKNOWN
TO_VERIFY
HYPOTHESIS
BLOCKED
PARTIAL
TO_CAPTURE
```

## Step 5 — Run local checks

Run local inspection commands before handoff:

- branch check
- clean working tree check
- diff stat check
- changed file list check
- syntax or structure checks
- public safety search

Use `LOCAL_COMMANDS.md` for the command set.

## Step 6 — Review validation gates

Before handoff, verify the relevant validation documents:

- public safety checklist
- placeholder replacement rules
- JSON syntax checklist when applicable
- CSV header checklist when applicable
- manual validation protocol
- release gate controls when a claim would be promoted

## Step 7 — Prepare review handoff

Prepare a handoff using `REVIEW_HANDOFF.md`.

The handoff must clearly separate:

- files changed
- checks performed
- findings
- known blockers
- unresolved evidence gaps
- reviewer decision requested

## Stop conditions

Stop the execution flow when:

- the working tree is not clean before starting
- the branch is wrong
- placeholder replacement would require private or unsafe data
- evidence is missing for a non-placeholder claim
- syntax or structure checks fail
- public safety search finds unsafe data in a record
- schema validation is required but has not been run
- review approval is required before continuing

## Operator rule

Do not silently repair or normalize evidence records during execution.

Report the issue and create a controlled follow-up branch if a change is required.
