# MMI 3G High — Evidence Case Library

## Purpose

This library defines review-case templates for future evidence-backed MMI 3G High research.

These are documentation templates only. They do not approve or describe vehicle changes.

## Case summary

| Case ID | Area | Goal | Required evidence | Risk | Start condition | Status |
|---|---|---|---|---|---|---|
| CASE-HIGH-LCOD-001 | Long Coding | Review one suspected relation | original data, DTC context, observation, rollback record | HIGH | baseline complete | 🔴 BLOCKED |
| CASE-HIGH-ADAPT-001 | Adaptation | Review one suspected channel relation | map/export, DTC context, observation, rollback record | HIGH | baseline complete | 🔴 BLOCKED |
| CASE-HIGH-RED-001 | Red Menu read-only | Capture identity/version evidence | photos/transcription | MEDIUM | menu access only | 🟠 TO VERIFY |
| CASE-HIGH-GREEN-001 | Green Menu read-only | Capture menu tree without value changes | photos/transcription | HIGH | read-only observation | 🟠 TO VERIFY |
| CASE-HIGH-CAR-001 | CAR menu | Capture visible menu tree | UI photos/video | MEDIUM | read-only observation | 🟠 TO VERIFY |
| CASE-HIGH-AUDIO-001 | Audio/MOST | Capture source visibility and output observation | UI evidence, module context | HIGH | evidence only | 🟠 TO VERIFY |
| CASE-HIGH-GW-001 | Gateway dependency | Compare UI with module presence | Gateway list, DTC context | HIGH | full scan | 🔴 BLOCKED |
| CASE-HIGH-CAM-PARK-001 | Camera/Parking | Compare reverse UI with module context | 6C/10/Gateway context, UI evidence | HIGH | full evidence | 🔴 BLOCKED |
| CASE-HIGH-LIGHT-001 | Light/BCM | Compare light menu visibility with module context | BCM/55/Gateway context, UI evidence | HIGH | full evidence | 🔴 BLOCKED |

## Generic review-case template

```markdown
## CASE-HIGH-XXX — <title>

| Field | Value |
|---|---|
| Case ID | CASE-HIGH-XXX |
| Area |  |
| Goal |  |
| Vehicle/system context |  |
| Required evidence |  |
| Observation under review |  |
| Evidence before |  |
| Evidence after if applicable |  |
| DTC context |  |
| Rollback record required? |  |
| Risk | LOW / MEDIUM / HIGH / CRITICAL |
| Status | ⚫ UNKNOWN / 🔴 HYPOTHESIS / 🟠 TO VERIFY / 🟡 VARIANT / 🟢 CONFIRMED |
```

## Blocked conditions

| Missing item | Effect |
|---|---|
| Auto-Scan | no full baseline review |
| original backup data | no behavior review |
| adaptation map | no adaptation review |
| DTC baseline | no fault attribution |
| Gateway list | no module dependency conclusion |
| MOST/audio context | no audio dependency conclusion |
| rollback record | no confirmed finding |

## Current decision

This library may be used to plan evidence review, not to publish technical conclusions.
