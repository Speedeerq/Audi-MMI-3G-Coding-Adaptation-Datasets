# Audi MMI 3G Coding / Adaptation / Dataset Research

> Evidence-based research repository for Audi MMI 3G High coding, adaptations, Security Access, datasets, hidden functions, test evidence, and cross-module dependencies.

## Navigation

| Area | Link |
|---|---|
| Repository navigation map | [NAVIGATION.md](NAVIGATION.md) |
| Roadmap | [ROADMAP.md](ROADMAP.md) |
| Changelog | [CHANGELOG.md](CHANGELOG.md) |
| MMI 3G High index | [01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md](01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md) |
| Offline research layer | [01_MMI_3G_HIGH/OFFLINE_RESEARCH/README.md](01_MMI_3G_HIGH/OFFLINE_RESEARCH/README.md) |
| Module dependency matrix | [01_MMI_3G_HIGH/OFFLINE_RESEARCH/MODULE_DEPENDENCY_MATRIX.md](01_MMI_3G_HIGH/OFFLINE_RESEARCH/MODULE_DEPENDENCY_MATRIX.md) |
| CAR menu dependency matrix | [01_MMI_3G_HIGH/OFFLINE_RESEARCH/CAR_MENU_DEPENDENCY_MATRIX.md](01_MMI_3G_HIGH/OFFLINE_RESEARCH/CAR_MENU_DEPENDENCY_MATRIX.md) |
| Audio/MOST dependency matrix | [01_MMI_3G_HIGH/OFFLINE_RESEARCH/AUDIO_MOST_DEPENDENCY_MATRIX.md](01_MMI_3G_HIGH/OFFLINE_RESEARCH/AUDIO_MOST_DEPENDENCY_MATRIX.md) |
| Light research shell | [11_LIGHT_CODING/LIGHT_CODING_RESEARCH_OVERVIEW.md](11_LIGHT_CODING/LIGHT_CODING_RESEARCH_OVERVIEW.md) |
| Compatibility matrix | [12_COMPATIBILITY/MMI_3G_HIGH_COMPATIBILITY_MATRIX.md](12_COMPATIBILITY/MMI_3G_HIGH_COMPATIBILITY_MATRIX.md) |
| Final progress report | [13_RELEASE/FINAL_PROGRESS_REPORT.md](13_RELEASE/FINAL_PROGRESS_REPORT.md) |

## Project purpose

This repository is designed as an evidence-based research dataset for Audi MMI 3G systems.

Primary focus:

1. Audi MMI 3G High
2. Audi MMI 3G Basic
3. Audi MMI 3G+
4. Related VAG/Audi modules connected to infotainment, lighting, gateway, audio, camera, cluster, and vehicle configuration.

The goal is not to publish a quick coding guide.  
The goal is to document **what is known, what is unknown, what is variant-dependent, and how each finding can be verified safely**.

## Current repository phase

Current phase: **v0.3.5 — Offline research package complete / waiting for evidence**.

No confirmed MMI 3G High byte/bit/adaptation/Security Access/dataset values are included.

## Scope

The repository will document:

| Area | Description | Status policy |
|---|---|---|
| Long Coding | Byte/bit mapping, labels, observed effects, dependencies, rollback paths | Every byte/bit must have a status |
| Adaptations | Channels, values, defaults, observed effects, Security Access requirements | Every channel must have evidence |
| Security Access | Login requirements, verified use cases, risk classification | No guessing allowed |
| Datasets | Address/function/value mapping, source, checksum notes, backup requirements | No binary datasets without source |
| Green Menu / Red Menu | Hidden engineering menus, observed functions, dependencies | Unknown options must be marked |
| Light Coding | BCM/J519, DRL, CH/LH, market/equipment light context, front/rear lamps | High-risk areas require evidence and release gate review |
| Compatibility | HW/SW version, market, PR-code and equipment dependencies | Variant matrix required |
| Test Logs | Controlled experiments and rollback verification | Required for confirmation |

## Supported systems

| System | Priority | Repository status |
|---|---:|---|
| MMI 3G High | P0 | Offline research structure ready / waiting for evidence |
| MMI 3G Basic | P2 | Placeholder only |
| MMI 3G+ | P3 | Placeholder only |

Related modules planned for cross-reference:

| Address | Module |
|---:|---|
| 5F | Information Electronics |
| 56 | Radio |
| 07 | Control Head |
| 09 | Central Electrics / BCM / J519 |
| 17 | Instrument Cluster |
| 19 | CAN Gateway |
| 46 | Central Convenience |
| 47 | Sound System |
| 6C | Rear View Camera |
| 10 | Park Assist |
| 55 | Headlight Range |

## Information status legend

Every claim must use one of the following statuses:

| Status | Meaning | Usage rule |
|---|---|---|
| 🟢 CONFIRMED | Confirmed by test, documentation, log, or repeatable evidence | Safe to reference with evidence |
| 🟡 VARIANT | Depends on HW/SW/market/equipment/PR-codes | Must document variant conditions |
| 🟠 TO VERIFY | Likely, but not sufficiently confirmed | Requires test before use |
| 🔴 HYPOTHESIS | Research hypothesis only | Do not apply without controlled test |
| ⚫ UNKNOWN | Function currently unknown | Must include a test plan or open question |

Full definition: [00_PROJECT/STATUS_LEGEND.md](00_PROJECT/STATUS_LEGEND.md)

## Safety warning

This repository must not be used as a blind-click coding list.

Before any technical claim can be promoted, the repository must capture relevant evidence such as:

1. full Auto-Scan,
2. original backup data,
3. adaptation export where applicable,
4. controller identification,
5. software version,
6. DTC context,
7. rollback evidence where applicable.

Detailed rules: [00_PROJECT/SAFETY_RULES.md](00_PROJECT/SAFETY_RULES.md)

## Repository layout

```text
Audi-MMI-3G-Coding-Adaptation-Datasets/
├── 00_PROJECT/
├── 01_MMI_3G_HIGH/
├── 02_MMI_3G_BASIC/
├── 03_MMI_3G_PLUS/
├── 04_MODULES/
├── 05_DATASETS/
├── 06_CODING_RESEARCH/
├── 07_ADAPTATION_RESEARCH/
├── 08_SECURITY_ACCESS/
├── 09_TEST_LOGS/
├── 10_BACKUPS/
├── 11_LIGHT_CODING/
├── 12_COMPATIBILITY/
├── 13_RELEASE/
├── NAVIGATION.md
├── README.md
├── CHANGELOG.md
└── ROADMAP.md
```

## How to submit new observations

A new observation should include:

| Required item | Description |
|---|---|
| System | MMI 3G High / Basic / Plus |
| Vehicle | Model, year, market |
| Controller | Address and controller name |
| Part number | Hardware/software identification |
| SW version | Software train/version |
| Original value | Original data where relevant |
| Modified value | Only when controlled evidence exists |
| Effect | What changed in vehicle/MMI behavior |
| DTC context | Before/after where relevant |
| Evidence | Logs, screenshots, photos |
| Rollback result | Whether original behavior returned where applicable |

Submissions without evidence stay `🟠 TO VERIFY`, `🔴 HYPOTHESIS`, or `⚫ UNKNOWN`.
