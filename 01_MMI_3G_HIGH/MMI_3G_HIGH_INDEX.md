# MMI 3G High — Structure Index

## Navigation

| Area | Link |
|---|---|
| Repository navigation | [../NAVIGATION.md](../NAVIGATION.md) |
| Root README | [../README.md](../README.md) |
| Roadmap | [../ROADMAP.md](../ROADMAP.md) |
| Changelog | [../CHANGELOG.md](../CHANGELOG.md) |
| Offline research layer | [OFFLINE_RESEARCH/README.md](OFFLINE_RESEARCH/README.md) |
| Final progress report | [../13_RELEASE/FINAL_PROGRESS_REPORT.md](../13_RELEASE/FINAL_PROGRESS_REPORT.md) |

## Purpose

This index maps the current MMI 3G High research structure, evidence state and blocked areas.

No confirmed byte/bit/adaptation/Security Access/dataset values are present.

## Core research files

| Area | File | Status | Evidence required | Risk | Next action |
|---|---|---|---|---|---|
| Overview | [MMI_3G_HIGH_OVERVIEW.md](MMI_3G_HIGH_OVERVIEW.md) | 🟠 TO VERIFY | baseline evidence | MEDIUM | attach Auto-Scan / Red Menu evidence |
| Long Coding | [MMI_3G_HIGH_LONG_CODING.md](MMI_3G_HIGH_LONG_CODING.md) | ⚫ UNKNOWN | original data, DTC context, rollback record | HIGH | waiting for evidence |
| Adaptations | [MMI_3G_HIGH_ADAPTATIONS.md](MMI_3G_HIGH_ADAPTATIONS.md) | ⚫ UNKNOWN | adaptation map, DTC context, rollback record | HIGH | waiting for evidence |
| Security Access | [MMI_3G_HIGH_SECURITY_ACCESS.md](MMI_3G_HIGH_SECURITY_ACCESS.md) | ⚫ UNKNOWN | operation-specific evidence | HIGH/CRITICAL | blocked |
| Datasets | [MMI_3G_HIGH_DATASETS.md](MMI_3G_HIGH_DATASETS.md) | ⚫ UNKNOWN | source, checksum, backup, recovery path | CRITICAL | blocked |
| Green Menu | [MMI_3G_HIGH_GREEN_MENU.md](MMI_3G_HIGH_GREEN_MENU.md) | ⚫ UNKNOWN | read-only photos/transcription | HIGH | capture read-only evidence |
| Red Menu | [MMI_3G_HIGH_RED_MENU.md](MMI_3G_HIGH_RED_MENU.md) | 🟠 TO VERIFY | Red Menu photos/transcription | MEDIUM/HIGH | capture read-only evidence |
| Audio Sources | [MMI_3G_HIGH_AUDIO_SOURCES.md](MMI_3G_HIGH_AUDIO_SOURCES.md) | 🟠 TO VERIFY | UI evidence, MOST/audio context | HIGH | capture read-only UI and scan context |
| CAR Menu | [MMI_3G_HIGH_CAR_MENU.md](MMI_3G_HIGH_CAR_MENU.md) | 🟠 TO VERIFY | UI evidence, Gateway/module context | HIGH | capture read-only UI and scan context |
| Test Matrix | [MMI_3G_HIGH_TEST_MATRIX.md](MMI_3G_HIGH_TEST_MATRIX.md) | 🟠 TO VERIFY | test evidence | HIGH | populate after evidence capture |

## Baseline files

| Area | File | Status | Evidence required | Risk | Next action |
|---|---|---|---|---|---|
| HNAV baseline index | [BASELINES/HNAV_8T1035664F_K0257_D1/README.md](BASELINES/HNAV_8T1035664F_K0257_D1/README.md) | 🟠 TO VERIFY | scan or Red Menu evidence | MEDIUM | attach evidence |
| Unit profile | [BASELINES/HNAV_8T1035664F_K0257_D1/UNIT_PROFILE.md](BASELINES/HNAV_8T1035664F_K0257_D1/UNIT_PROFILE.md) | 🟠 TO VERIFY | controller ID / Red Menu / unit label | MEDIUM | verify values |
| Evidence index | [BASELINES/HNAV_8T1035664F_K0257_D1/EVIDENCE_INDEX.md](BASELINES/HNAV_8T1035664F_K0257_D1/EVIDENCE_INDEX.md) | 🟠 TO VERIFY | evidence files | MEDIUM | populate evidence |
| Coding backup | [BASELINES/HNAV_8T1035664F_K0257_D1/CODING_BACKUP.md](BASELINES/HNAV_8T1035664F_K0257_D1/CODING_BACKUP.md) | 🟠 TO CAPTURE | original data | HIGH | waiting for evidence |
| Adaptation map | [BASELINES/HNAV_8T1035664F_K0257_D1/ADAPTATION_MAP.md](BASELINES/HNAV_8T1035664F_K0257_D1/ADAPTATION_MAP.md) | 🟠 TO CAPTURE | adaptation export | HIGH | waiting for evidence |
| DTC baseline | [BASELINES/HNAV_8T1035664F_K0257_D1/DTC_BASELINE.md](BASELINES/HNAV_8T1035664F_K0257_D1/DTC_BASELINE.md) | 🟠 TO CAPTURE | DTC-before evidence | HIGH | waiting for evidence |
| Test plan | [BASELINES/HNAV_8T1035664F_K0257_D1/TEST_PLAN.md](BASELINES/HNAV_8T1035664F_K0257_D1/TEST_PLAN.md) | 🟠 TO VERIFY | evidence package | HIGH | follow A0/A evidence stages |
| No Auto-Scan fallback | [BASELINES/HNAV_8T1035664F_K0257_D1/NO_AUTOSCAN_FALLBACK.md](BASELINES/HNAV_8T1035664F_K0257_D1/NO_AUTOSCAN_FALLBACK.md) | 🟠 TO VERIFY | read-only evidence | MEDIUM | capture photos later |

## Offline research files

| Area | File | Status | Evidence required | Risk | Next action |
|---|---|---|---|---|---|
| Offline index | [OFFLINE_RESEARCH/README.md](OFFLINE_RESEARCH/README.md) | 🟠 TO VERIFY | none for structure | LOW | maintain index |
| Backlog | [OFFLINE_RESEARCH/RESEARCH_BACKLOG.md](OFFLINE_RESEARCH/RESEARCH_BACKLOG.md) | 🟠 TO VERIFY | evidence to close items | MEDIUM | update as evidence arrives |
| Hypotheses | [OFFLINE_RESEARCH/HYPOTHESIS_REGISTER.md](OFFLINE_RESEARCH/HYPOTHESIS_REGISTER.md) | 🔴 HYPOTHESIS | proof per item | MEDIUM/HIGH | keep separate from facts |
| Evidence queue | [OFFLINE_RESEARCH/EVIDENCE_QUEUE.md](OFFLINE_RESEARCH/EVIDENCE_QUEUE.md) | 🟠 TO VERIFY | actual files/photos/logs | MEDIUM | populate later |
| Module dependencies | [OFFLINE_RESEARCH/MODULE_DEPENDENCY_MATRIX.md](OFFLINE_RESEARCH/MODULE_DEPENDENCY_MATRIX.md) | 🟠 TO VERIFY | scan/UI/module context | HIGH | use for planning only |
| CAR menu dependencies | [OFFLINE_RESEARCH/CAR_MENU_DEPENDENCY_MATRIX.md](OFFLINE_RESEARCH/CAR_MENU_DEPENDENCY_MATRIX.md) | 🟠 TO VERIFY | UI + module context | HIGH | use for planning only |
| Audio/MOST dependencies | [OFFLINE_RESEARCH/AUDIO_MOST_DEPENDENCY_MATRIX.md](OFFLINE_RESEARCH/AUDIO_MOST_DEPENDENCY_MATRIX.md) | 🟠 TO VERIFY | UI + audio/MOST context | HIGH | use for planning only |
| Source review | [OFFLINE_RESEARCH/SOURCE_REVIEW_PROTOCOL.md](OFFLINE_RESEARCH/SOURCE_REVIEW_PROTOCOL.md) | 🟠 TO VERIFY | source context | MEDIUM/HIGH | apply before importing claims |
| Source queue | [OFFLINE_RESEARCH/SOURCE_REVIEW_QUEUE.md](OFFLINE_RESEARCH/SOURCE_REVIEW_QUEUE.md) | ⚫ UNKNOWN | sources to review | MEDIUM/HIGH | populate later |
| Risk register | [OFFLINE_RESEARCH/RISK_REGISTER.md](OFFLINE_RESEARCH/RISK_REGISTER.md) | 🟠 TO VERIFY | evidence per risk | HIGH | maintain release blockers |
| Release gate | [OFFLINE_RESEARCH/RELEASE_GATE.md](OFFLINE_RESEARCH/RELEASE_GATE.md) | 🟠 TO VERIFY | evidence completeness | HIGH | use before publishing |
| Evidence case library | [OFFLINE_RESEARCH/TEST_CASE_LIBRARY.md](OFFLINE_RESEARCH/TEST_CASE_LIBRARY.md) | 🟠 TO VERIFY | evidence per case | HIGH | use as review templates |
| Blocked items | [OFFLINE_RESEARCH/BLOCKED_ITEMS_REGISTER.md](OFFLINE_RESEARCH/BLOCKED_ITEMS_REGISTER.md) | 🟠 TO VERIFY | evidence to unblock | HIGH | keep blocked until proof |

## Related areas

| Area | File/folder | Status | Evidence required | Risk | Next action |
|---|---|---|---|---|---|
| Light research | [../11_LIGHT_CODING/LIGHT_CODING_RESEARCH_OVERVIEW.md](../11_LIGHT_CODING/LIGHT_CODING_RESEARCH_OVERVIEW.md) | 🟠 TO VERIFY | BCM/Gateway/MMI evidence | HIGH | read-only planning only |
| Compatibility | [../12_COMPATIBILITY/MMI_3G_HIGH_COMPATIBILITY_MATRIX.md](../12_COMPATIBILITY/MMI_3G_HIGH_COMPATIBILITY_MATRIX.md) | 🟠 TO VERIFY | variant evidence | MEDIUM/HIGH | add evidence-backed baselines later |
| Final report | [../13_RELEASE/FINAL_PROGRESS_REPORT.md](../13_RELEASE/FINAL_PROGRESS_REPORT.md) | 🟠 TO VERIFY | repository state | LOW | update after each milestone |

## Waiting for evidence

| Evidence | Required for |
|---|---|
| Auto-Scan | baseline and module context |
| Red Menu photos | provisional SW/MU identity |
| MMI version screen | provisional version identity |
| controller ID | unit profile verification |
| original backup data | future behavior review |
| adaptation map | adaptation review |
| DTC baseline | fault attribution |
| Gateway list | dependency mapping |
| MOST/audio baseline | audio dependency mapping |

## Current decision

The MMI 3G High structure is prepared for offline research and future evidence intake.

No confirmed technical values are present.
