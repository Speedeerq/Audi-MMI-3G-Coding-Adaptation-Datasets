# MMI 3G High — Research Backlog

## Purpose

This backlog lists MMI 3G High research work that can be prepared before evidence is available.

It is not a confirmed knowledge base.

## Priority legend

| Priority | Meaning |
|---|---|
| P0 | Required before any confirmed findings |
| P1 | Required before safe tests |
| P2 | Useful for structured research |
| P3 | Later expansion |

## Backlog

| ID | Priority | Area | Task | Evidence required | Status |
|---|---:|---|---|---|---|
| HIGH-BL-001 | P0 | Baseline | Capture full Auto-Scan | Full scan, DTC, controller ID | 🟠 TO VERIFY |
| HIGH-BL-002 | P0 | Baseline | Capture Red Menu identification | Photos/transcription | 🟠 TO VERIFY |
| HIGH-BL-003 | P0 | Baseline | Capture original coding | Raw coding export/screenshot | 🟠 TO VERIFY |
| HIGH-BL-004 | P0 | Baseline | Capture DTC-before state | Full scan or DTC log | 🟠 TO VERIFY |
| HIGH-BL-005 | P1 | Adaptations | Capture adaptation map | CSV/export/screenshot | 🟠 TO VERIFY |
| HIGH-BL-006 | P1 | Gateway | Capture Gateway installation list | Gateway scan block | 🟠 TO VERIFY |
| HIGH-BL-007 | P1 | Audio/MOST | Capture sound system/MOST state | Controller/DTC evidence | 🟠 TO VERIFY |
| HIGH-BL-008 | P1 | CAR menu | Capture visible CAR menu tree | Read-only screenshots | 🟠 TO VERIFY |
| HIGH-BL-009 | P1 | Green Menu | Capture read-only Green Menu paths | Photos only | 🟠 TO VERIFY |
| HIGH-BL-010 | P2 | Compatibility | Build variant matrix | Multiple baselines | ⚫ UNKNOWN |
| HIGH-BL-011 | P2 | Light coding | Prepare BCM/lighting dependency matrix | BCM/Gateway/light evidence | ⚫ UNKNOWN |
| HIGH-BL-012 | P2 | Security Access | Define operation-based login register | Tested operations only | ⚫ UNKNOWN |
| HIGH-BL-013 | P3 | Datasets | Define dataset metadata intake | Source/checksum/backup | ⚫ UNKNOWN |

## Offline-only tasks

These tasks may continue now without vehicle access.

| ID | Task | Output | Status |
|---|---|---|---|
| HIGH-OFF-001 | Define evidence requirements for each research area | `EVIDENCE_QUEUE.md` | 🟠 TO VERIFY |
| HIGH-OFF-002 | Define hypothesis format and downgrade rules | `HYPOTHESIS_REGISTER.md` | 🟠 TO VERIFY |
| HIGH-OFF-003 | Define external source review rules | `SOURCE_REVIEW_PROTOCOL.md` | 🟠 TO VERIFY |
| HIGH-OFF-004 | Define risk classes and release blocks | `RISK_REGISTER.md` | 🟠 TO VERIFY |
| HIGH-OFF-005 | Define release gate for confirmed entries | `RELEASE_GATE.md` | 🟠 TO VERIFY |

## Blocked tasks

| Task | Blocked until | Reason |
|---|---|---|
| Confirm byte/bit behavior | Coding backup + controlled test + DTC before/after | No evidence |
| Confirm adaptation behavior | Adaptation map + controlled test + rollback | No evidence |
| Publish Security Access values | Operation-specific evidence + safety review | No guessing allowed |
| Publish dataset values | Source + checksum + backup + recovery path | Critical risk |
| Gateway changes | Gateway baseline + rollback path | Network risk |
| MOST/audio configuration changes | MOST/audio baseline + rollback path | Audio/MOST risk |
