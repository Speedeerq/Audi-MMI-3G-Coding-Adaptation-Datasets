# MMI 3G High — Source Review Queue

## Purpose

This queue stores external/community/internal sources that may be reviewed later.

No source in this file is automatically treated as fact.

## Queue table

| Source ID | Source type | Source / location | Claim to review | Related area | Risk | Required confirmation | Current status |
|---|---|---|---|---|---|---|---|
| SRCQ-HIGH-001 | Forum / community | TBD | TBD | Long Coding | HIGH | controller context, before/after evidence, rollback | ⚫ UNKNOWN |
| SRCQ-HIGH-002 | Screenshot | TBD | TBD | Red/Green Menu | MEDIUM | clear image, SW context, no action performed | ⚫ UNKNOWN |
| SRCQ-HIGH-003 | Video | TBD | TBD | CAR menu | HIGH | sequence, vehicle context, module context | ⚫ UNKNOWN |
| SRCQ-HIGH-004 | Repository | TBD | TBD | dataset / metadata | CRITICAL | source, checksum, compatibility, backup | ⚫ UNKNOWN |
| SRCQ-HIGH-005 | PDF / document | TBD | TBD | compatibility | MEDIUM/HIGH | source review, variant context | ⚫ UNKNOWN |
| SRCQ-HIGH-006 | Personal note | TBD | TBD | HNAV baseline | MEDIUM | scan/photo evidence | 🔴 HYPOTHESIS |

## Review workflow

| Step | Action |
|---:|---|
| 1 | Add source to queue without copying values as facts |
| 2 | Identify exact claim being reviewed |
| 3 | Assign risk level |
| 4 | Define required confirmation |
| 5 | Apply `SOURCE_REVIEW_PROTOCOL.md` |
| 6 | Keep as hypothesis until evidence exists |

## Rejection conditions

| Condition | Action |
|---|---|
| No controller/software context | keep `🔴 HYPOTHESIS` |
| No before/after evidence for behavior claim | do not promote |
| No rollback for technical change | do not promote |
| Dataset without source/checksum/backup | block |
| Login value without operation context | block |

## Current decision

This file is a queue only. It does not contain confirmed findings.
