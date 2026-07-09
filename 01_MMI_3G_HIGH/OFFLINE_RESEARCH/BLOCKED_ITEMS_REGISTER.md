# MMI 3G High — Blocked Items Register

## Purpose

This register lists research items that must remain blocked until required evidence exists.

## Blocked items

| Block ID | Area | Blocked item | Reason | Required evidence | Risk | Status | Next safe step |
|---|---|---|---|---|---|---|---|
| BLK-HIGH-001 | Baseline | Confirm HNAV unit identity | no attached Auto-Scan or Red Menu evidence | Auto-Scan or Red Menu photos + controller context | MEDIUM | WAITING_FOR_EVIDENCE | capture read-only identity evidence |
| BLK-HIGH-002 | Long Coding | Confirm byte/bit behavior | no original backup, no before/after evidence | original data, DTC context, observation, rollback record | HIGH | BLOCKED | collect baseline data |
| BLK-HIGH-003 | Adaptation | Confirm channel behavior | no adaptation map | adaptation export, DTC context, observation, rollback record | HIGH | BLOCKED | collect adaptation map |
| BLK-HIGH-004 | DTC attribution | Identify new faults from research | no DTC baseline | full scan or DTC-before record | HIGH | BLOCKED | collect DTC baseline |
| BLK-HIGH-005 | Red Menu | Promote Red Menu identity | no photos/transcription | Red Menu photo set and worksheet | MEDIUM | WAITING_FOR_EVIDENCE | capture read-only photos |
| BLK-HIGH-006 | MMI version | Promote MMI version identity | no screen evidence | MMI version screen photo/transcription | LOW/MEDIUM | WAITING_FOR_EVIDENCE | capture version screen |
| BLK-HIGH-007 | Gateway | Confirm module dependency | no Gateway installation list | Gateway context from scan | HIGH | BLOCKED | collect Gateway list |
| BLK-HIGH-008 | Audio/MOST | Confirm audio dependency | no MOST/audio baseline | sound system context and DTC context | HIGH | BLOCKED | collect audio/MOST evidence |
| BLK-HIGH-009 | Camera/Parking | Confirm RVC/OPS dependency | no 6C/10/Gateway context | module context and UI evidence | HIGH | BLOCKED | collect scan + UI evidence |
| BLK-HIGH-010 | Light/BCM | Confirm lighting menu dependency | no BCM/55/Gateway context | module context and MMI screen evidence | HIGH | BLOCKED | collect read-only evidence |
| BLK-HIGH-011 | Security Access | Publish login values | no operation-specific proof | accepted/rejected operation evidence, risk review | HIGH/CRITICAL | BLOCKED | do not publish values |
| BLK-HIGH-012 | Dataset | Publish dataset metadata as usable | no source/checksum/backup/recovery | verified source, checksum, compatibility, backup | CRITICAL | BLOCKED | keep metadata only |

## Evidence unlock map

| Evidence provided later | Unlocks |
|---|---|
| Auto-Scan | baseline review, module context, DTC context |
| Red Menu photos | provisional identity review |
| MMI version screen | provisional version review |
| original backup data | future behavior review |
| adaptation map | future adaptation review |
| DTC baseline | fault attribution review |
| Gateway list | module dependency review |
| MOST/audio baseline | audio dependency review |

## Current decision

Blocked items must remain blocked until evidence is available and reviewed.
