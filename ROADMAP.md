# ROADMAP

## Navigation

| Area | Link |
|---|---|
| Repository navigation | [NAVIGATION.md](NAVIGATION.md) |
| Root README | [README.md](README.md) |
| Changelog | [CHANGELOG.md](CHANGELOG.md) |
| MMI 3G High index | [01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md](01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md) |
| Offline research layer | [01_MMI_3G_HIGH/OFFLINE_RESEARCH/README.md](01_MMI_3G_HIGH/OFFLINE_RESEARCH/README.md) |
| Final progress report | [13_RELEASE/FINAL_PROGRESS_REPORT.md](13_RELEASE/FINAL_PROGRESS_REPORT.md) |

## Project state

Current state: **v0.3.5 — Offline research package complete / waiting for evidence**

This project is intentionally staged. Technical findings for MMI 3G High must not be promoted until evidence, controller context, DTC state and rollback requirements are satisfied.

## Milestones

| Milestone | Area | Goal | Status |
|---|---|---|---|
| M0 | Repository foundation | Directory structure, safety rules, research method, status legend, test protocol | 🟢 DONE |
| M1 | MMI 3G High document shell | Create research files for MMI 3G High without unverified findings | 🟢 DONE |
| M2 | HNAV baseline/evidence intake shell | Baseline, Auto-Scan templates, fallback evidence templates | 🟢 DONE — structure only |
| M3 | Offline dependency research | Module, CAR, Audio/MOST, source, risk and blocked-item matrices | 🟢 DONE — no confirmed findings |
| M4 | Light research shell | BCM/J519/MMI light menu evidence shell | 🟢 DONE — no values |
| M5 | Compatibility matrix | HW/SW/market/equipment matrix shell | 🟢 DONE — provisional only |
| M6 | Long Coding matrix | Map byte/bit behavior only after evidence | 🔴 WAITING_FOR_EVIDENCE |
| M7 | Adaptation matrix | Document channels only after adaptation evidence | 🔴 WAITING_FOR_EVIDENCE |
| M8 | Security Access register | Document verified operation requirements only | 🔴 BLOCKED |
| M9 | Dataset register | Document dataset metadata only from verified sources | 🔴 BLOCKED |
| M10 | Release package | Public-safe report and reviewed release notes | 🟠 IN PROGRESS |
| M11 | MMI 3G Basic expansion | Start Basic-specific structure after High foundation stabilizes | ⚫ NOT STARTED |
| M12 | MMI 3G+ expansion | Start Plus-specific structure after High/Basic method stabilizes | ⚫ NOT STARTED |

## Offline Research Completed

| Area | Output | Status |
|---|---|---|
| Module dependencies | [01_MMI_3G_HIGH/OFFLINE_RESEARCH/MODULE_DEPENDENCY_MATRIX.md](01_MMI_3G_HIGH/OFFLINE_RESEARCH/MODULE_DEPENDENCY_MATRIX.md) | 🟢 DONE — planning only |
| CAR menu dependencies | [01_MMI_3G_HIGH/OFFLINE_RESEARCH/CAR_MENU_DEPENDENCY_MATRIX.md](01_MMI_3G_HIGH/OFFLINE_RESEARCH/CAR_MENU_DEPENDENCY_MATRIX.md) | 🟢 DONE — planning only |
| Audio/MOST dependencies | [01_MMI_3G_HIGH/OFFLINE_RESEARCH/AUDIO_MOST_DEPENDENCY_MATRIX.md](01_MMI_3G_HIGH/OFFLINE_RESEARCH/AUDIO_MOST_DEPENDENCY_MATRIX.md) | 🟢 DONE — planning only |
| Light research shell | [11_LIGHT_CODING/LIGHT_CODING_RESEARCH_OVERVIEW.md](11_LIGHT_CODING/LIGHT_CODING_RESEARCH_OVERVIEW.md) | 🟢 DONE — shell only |
| Compatibility matrix | [12_COMPATIBILITY/MMI_3G_HIGH_COMPATIBILITY_MATRIX.md](12_COMPATIBILITY/MMI_3G_HIGH_COMPATIBILITY_MATRIX.md) | 🟢 DONE — provisional only |
| Source review queue | [01_MMI_3G_HIGH/OFFLINE_RESEARCH/SOURCE_REVIEW_QUEUE.md](01_MMI_3G_HIGH/OFFLINE_RESEARCH/SOURCE_REVIEW_QUEUE.md) | 🟢 DONE |
| Evidence case library | [01_MMI_3G_HIGH/OFFLINE_RESEARCH/TEST_CASE_LIBRARY.md](01_MMI_3G_HIGH/OFFLINE_RESEARCH/TEST_CASE_LIBRARY.md) | 🟢 DONE |
| Blocked items register | [01_MMI_3G_HIGH/OFFLINE_RESEARCH/BLOCKED_ITEMS_REGISTER.md](01_MMI_3G_HIGH/OFFLINE_RESEARCH/BLOCKED_ITEMS_REGISTER.md) | 🟢 DONE |
| Structure index | [01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md](01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md) | 🟢 DONE |

## Waiting for Evidence

| Evidence | Required for | Status |
|---|---|---|
| Full Auto-Scan | baseline and module context | 🟠 TO CAPTURE |
| Red Menu photos/transcription | provisional SW/MU identity | 🟠 TO CAPTURE |
| MMI version screen | provisional system version identity | 🟠 TO CAPTURE |
| controller identification | unit profile verification | 🟠 TO CAPTURE |
| original backup data | future behavior review | 🟠 TO CAPTURE |
| adaptation map/export | adaptation review | 🟠 TO CAPTURE |
| DTC baseline | fault attribution | 🟠 TO CAPTURE |
| Gateway installation list | module dependency review | 🟠 TO CAPTURE |
| MOST/audio baseline | audio dependency review | 🟠 TO CAPTURE |

## Phase 0 — Foundation

Status: 🟢 DONE

Deliverables:

- [README.md](README.md)
- [ROADMAP.md](ROADMAP.md)
- [CHANGELOG.md](CHANGELOG.md)
- [00_PROJECT/PROJECT_BRIEF.md](00_PROJECT/PROJECT_BRIEF.md)
- [00_PROJECT/RESEARCH_METHOD.md](00_PROJECT/RESEARCH_METHOD.md)
- [00_PROJECT/STATUS_LEGEND.md](00_PROJECT/STATUS_LEGEND.md)
- [00_PROJECT/TEST_PROTOCOL.md](00_PROJECT/TEST_PROTOCOL.md)
- [00_PROJECT/SAFETY_RULES.md](00_PROJECT/SAFETY_RULES.md)
- repository folder structure

## Phase 1 — MMI 3G High shell

Status: 🟢 DONE

Deliverables:

- [01_MMI_3G_HIGH/MMI_3G_HIGH_OVERVIEW.md](01_MMI_3G_HIGH/MMI_3G_HIGH_OVERVIEW.md)
- [01_MMI_3G_HIGH/MMI_3G_HIGH_LONG_CODING.md](01_MMI_3G_HIGH/MMI_3G_HIGH_LONG_CODING.md)
- [01_MMI_3G_HIGH/MMI_3G_HIGH_ADAPTATIONS.md](01_MMI_3G_HIGH/MMI_3G_HIGH_ADAPTATIONS.md)
- [01_MMI_3G_HIGH/MMI_3G_HIGH_SECURITY_ACCESS.md](01_MMI_3G_HIGH/MMI_3G_HIGH_SECURITY_ACCESS.md)
- [01_MMI_3G_HIGH/MMI_3G_HIGH_DATASETS.md](01_MMI_3G_HIGH/MMI_3G_HIGH_DATASETS.md)
- [01_MMI_3G_HIGH/MMI_3G_HIGH_GREEN_MENU.md](01_MMI_3G_HIGH/MMI_3G_HIGH_GREEN_MENU.md)
- [01_MMI_3G_HIGH/MMI_3G_HIGH_RED_MENU.md](01_MMI_3G_HIGH/MMI_3G_HIGH_RED_MENU.md)
- [01_MMI_3G_HIGH/MMI_3G_HIGH_AUDIO_SOURCES.md](01_MMI_3G_HIGH/MMI_3G_HIGH_AUDIO_SOURCES.md)
- [01_MMI_3G_HIGH/MMI_3G_HIGH_CAR_MENU.md](01_MMI_3G_HIGH/MMI_3G_HIGH_CAR_MENU.md)
- [01_MMI_3G_HIGH/MMI_3G_HIGH_TEST_MATRIX.md](01_MMI_3G_HIGH/MMI_3G_HIGH_TEST_MATRIX.md)
- [01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md](01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md)

## Phase 2 — Evidence intake

Status: 🟠 STRUCTURE READY / WAITING_FOR_EVIDENCE

Accepted sources:

| Source type | Accepted as | Notes |
|---|---|---|
| Auto-Scan | Evidence | Must include date, vehicle, controller part number and SW |
| VCDS/ODIS/VCP screenshots | Evidence | Must show context and original state where relevant |
| Adaptation map | Evidence | Must include channel values and controller metadata |
| Photo/video of MMI behavior | Supporting evidence | Must be linked to an observation or case ID |
| Community report without logs | Observation only | Usually `🟠 TO VERIFY` or lower |
| Memory-only claim | Not sufficient | Cannot become confirmed |

## Phase 3 — Long Coding research

Status: 🔴 WAITING_FOR_EVIDENCE

Rules:

1. Every byte and bit must be represented only when coding structure is known.
2. Unknown bits must be marked `⚫ UNKNOWN`.
3. Suspected functions must be marked `🔴 HYPOTHESIS` or `🟠 TO VERIFY`.
4. No bit becomes `🟢 CONFIRMED` without evidence.
5. Rollback evidence is required before release.

## Phase 4 — Adaptation research

Status: 🔴 WAITING_FOR_EVIDENCE

Rules:

1. Document default value, observed value and value range separately.
2. Document whether Security Access was required only with evidence.
3. Record persistence only when observed.
4. Record DTC before and after where relevant.
5. Record dependencies across 5F/56/07/19/09/17/46/47/6C/10/55 where applicable.

## Phase 5 — Security Access research

Status: 🔴 BLOCKED

Rules:

1. Do not guess login values.
2. Do not publish unverified login values as facts.
3. Every Security Access entry must define operation context, controller metadata, risk and evidence.

## Phase 6 — Dataset research

Status: 🔴 BLOCKED

Rules:

1. Do not generate binary dataset files without source.
2. Do not publish copyrighted/proprietary binaries.
3. Always require backup before dataset or parameterization work.
4. Track checksum/source/variant information.

## Phase 7 — Light research

Status: 🟢 SHELL DONE / WAITING_FOR_EVIDENCE

Scope is limited to documentation planning until evidence exists.

## Release policy

A release may be tagged only when:

| Requirement | Required |
|---|---|
| No unmarked claims | Yes |
| Every CONFIRMED item has evidence | Yes |
| Every risky item has rollback notes | Yes |
| No unsupported binary data | Yes |
| No private VINs or personal data | Yes |
| Changelog updated | Yes |

## Open decisions

| ID | Decision | Status |
|---|---|---|
| DEC-001 | Final public license | ⚫ OPEN |
| DEC-002 | Evidence file naming convention for screenshots/videos | 🟠 PROPOSED |
| DEC-003 | Whether to publish raw Auto-Scans or sanitized extracts only | 🟠 PROPOSED |
| DEC-004 | CSV/JSON mirror for tables | 🟠 PROPOSED |
