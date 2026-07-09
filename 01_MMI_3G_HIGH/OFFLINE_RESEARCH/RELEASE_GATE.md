# MMI 3G High — Release Gate

## Purpose

This file defines minimum criteria before any MMI 3G High research item can be published as a confirmed finding.

## Release levels

| Release level | Meaning |
|---|---|
| R0 — Structure only | Templates, unknowns, placeholders |
| R1 — Provisional evidence | Photos, notes, read-only observations |
| R2 — Variant finding | Evidence-backed for one defined variant |
| R3 — Confirmed finding | Controlled test with rollback and metadata |
| R4 — Public instruction candidate | Confirmed, low-risk or fully documented risk |

## Gate requirements by item type

| Item type | Minimum release level | Required evidence |
|---|---|---|
| Research question | R0 | Clear unknown/status tag |
| Hypothesis | R0/R1 | Reason and missing evidence |
| Red Menu identity | R1 | Photos/transcription |
| MMI version identity | R1 | Photo/transcription |
| Long Coding behavior | R3 | Coding before/after, DTC before/after, observed effect, rollback |
| Adaptation behavior | R3 | Adaptation before/after, DTC before/after, observed effect, rollback |
| Security Access requirement | R3/R4 | Operation context, accepted/rejected result, risk review |
| Dataset metadata | R3/R4 | Source, checksum, compatibility, backup, recovery |
| Gateway dependency | R3/R4 | Gateway baseline, module evidence, rollback |
| MOST/audio dependency | R3/R4 | MOST/audio baseline, DTC, rollback |
| Light/BCM dependency | R3/R4 | BCM/Gateway baseline, legal/safety note, rollback |

## Confirmation checklist

A confirmed entry must include:

| Requirement | Required |
|---|---:|
| Controller address | Yes |
| Part number | Yes |
| Software version | Yes |
| Vehicle/market/equipment context | Yes |
| Original value | Yes |
| Modified value if applicable | Yes |
| Observed effect | Yes |
| DTC before/after | Yes when relevant |
| Rollback result | Yes |
| Evidence link | Yes |
| Risk classification | Yes |
| Status tag | Yes |

## Release blockers

| Blocker | Result |
|---|---|
| No evidence link | Cannot release as confirmed |
| No rollback | Cannot release as confirmed |
| No DTC context for write test | Cannot release as confirmed |
| No controller/SW context | Cannot generalize |
| High-risk area lacks recovery plan | Block release |
| Security Access value lacks operation context | Block release |
| Dataset lacks source/checksum/backup | Block release |
| Result tested on one variant only | Mark `🟡 VARIANT`, not global |

## Public wording policy

Use:

- `observed on`,
- `tested on`,
- `variant-specific`,
- `requires verification`,
- `unknown on other variants`,
- `do not use without backup`.

Do not use:

- `always`,
- `works on all`,
- `safe`,
- `confirmed` without evidence,
- `use this login`,
- `upload this dataset`,
- `change this bit` without context and rollback.

## Final review table

| Item | Evidence complete? | Risk reviewed? | Rollback? | Release level | Decision |
|---|---|---|---|---|---|
| TBD | No | No | No | R0 | Not releasable |
