# Audi MMI 3G Coding / Adaptation / Dataset Research

> Evidence-based domain knowledge authority for Audi MMI 3G High coding, adaptations, Security Access, datasets, hidden functions, test evidence, and cross-module dependencies.

## Navigation

| Area | Link |
|---|---|
| Repository navigation map | [NAVIGATION.md](NAVIGATION.md) |
| Authority model | [00_PROJECT/AUTHORITY_MODEL.md](00_PROJECT/AUTHORITY_MODEL.md) |
| Governance sync | [00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md](00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md) |
| Evidence intake workflow | [docs/evidence_intake/README.md](docs/evidence_intake/README.md) |
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

This repository is the AudiMMI domain knowledge authority for Audi MMI 3G coding, adaptation and dataset research.

Primary focus:

1. Audi MMI 3G High
2. Audi MMI 3G Basic
3. Audi MMI 3G+
4. Related VAG/Audi modules connected to infotainment, lighting, gateway, audio, camera, cluster, and vehicle configuration.

The repository stores verified domain knowledge, research records, variant constraints, compatibility rules and evidence-linked findings. It is not a blind coding guide and it is not the canonical store for raw evidence from a specific vehicle.

## Authority boundary

The AudiMMI architecture uses three separate authority layers:

| Layer | Repository | Canonical responsibility |
|---|---|---|
| Vehicle Evidence Authority | `Speedeerq/audi-a4-b8-master-workshop-manual` | Raw and normalized evidence tied to a specific vehicle/session: Auto-Scans, blockmaps, adaptation maps, screenshots, timestamps and vehicle-specific observations |
| Domain Knowledge Authority | `Speedeerq/Audi-MMI-3G-Coding-Adaptation-Datasets` | Verified MMI 3G semantics, coding/adaptation findings, dataset knowledge, variant rules, compatibility constraints and research provenance |
| Platform Consumer / Normalization | `Speedeerq/remote-automotive-diagnostics-platform` | Evidence schemas, capture contracts, normalization, validation, orchestration and downstream service logic |

No repository may silently replace the authority of another layer. Cross-repository consumption must preserve source repository, commit SHA and evidence/finding provenance.

Full contract: [00_PROJECT/AUTHORITY_MODEL.md](00_PROJECT/AUTHORITY_MODEL.md).

## Current repository phase

Current phase: **Governance synchronized / domain knowledge authority established**.

Important distinction:

- data already published in this repository are treated as verified domain data under the repository owner's project decision;
- individual files may still carry historical `TO VERIFY`, `UNKNOWN`, `Pending` or similar labels that predate this governance decision;
- those stale labels must be reconciled record-by-record against the actual evidence/provenance before being promoted in bulk;
- absence of a currently indexed finding for a specific semantic question does not prove or disprove that semantic question.

Therefore this governance sync changes the repository's role and authority status, but does not fabricate missing byte/bit/channel mappings or close unrelated open gaps automatically.

## Scope

The repository documents:

| Area | Description | Status policy |
|---|---|---|
| Long Coding | Byte/bit mapping, labels, observed effects, dependencies, rollback paths | Every byte/bit must retain variant and provenance scope |
| Adaptations | Channels, values, defaults, observed effects, Security Access requirements | Every promoted channel must retain evidence/provenance |
| Security Access | Login requirements, verified use cases, risk classification | No guessing allowed |
| Datasets | Address/function/value mapping, source, checksum notes, backup requirements | No binary dataset publication without controlled source/provenance |
| Green Menu / Red Menu | Hidden engineering menus, observed functions, dependencies | Unknown options must remain explicitly unknown |
| Light Coding | BCM/J519, DRL, CH/LH, market/equipment light context, front/rear lamps | High-risk areas require evidence and release-gate review |
| Compatibility | HW/SW version, market, PR-code and equipment dependencies | Variant matrix required |
| Test Logs | Controlled experiments and rollback verification | Required for technical promotion where applicable |

## Supported systems

| System | Priority | Repository status |
|---|---:|---|
| MMI 3G High | P0 | Active domain knowledge baseline |
| MMI 3G Basic | P2 | Limited / expand only with evidence-backed records |
| MMI 3G+ | P3 | Limited / expand only with evidence-backed records |

Related modules include `5F`, `56`, `07`, `09`, `17`, `19`, `46`, `47`, `6C`, `10` and `55` where they materially affect MMI behavior.

## Information status legend

Historical and current research records use status labels such as:

| Status | Meaning | Usage rule |
|---|---|---|
| 🟢 CONFIRMED | Confirmed by controlled evidence for the stated scope | Safe to reference only with its scope and provenance |
| 🟡 VARIANT | Depends on HW/SW/market/equipment/PR-codes | Must document variant conditions |
| 🟠 TO VERIFY | Record requires evidence reconciliation or additional proof | Do not generalize |
| 🔴 HYPOTHESIS | Research hypothesis only | Do not apply as instruction |
| ⚫ UNKNOWN | Function currently unresolved | Must remain unresolved until evidence exists |

Repository-level authority does not convert every historical item to `CONFIRMED`. Status promotion remains item-specific.

## Safety warning

This repository must not be used as a blind-click coding list.

Before applying any vehicle-state change, the target vehicle must be identified with sufficient evidence, including controller identity, software context, current state, variant/market context and rollback capability appropriate to the operation.

Detailed rules: [00_PROJECT/SAFETY_RULES.md](00_PROJECT/SAFETY_RULES.md).

## Cross-repository consumption rule

Any downstream system consuming a technical finding from this repository should retain at minimum:

```text
source_repository
source_commit_sha
finding_id or source_path
variant_scope
status
supporting_evidence_ref(s)
consumed_at
```

Remote Platform must reference this repository as `DOMAIN_KNOWLEDGE_AUTHORITY`; it must not silently fork or duplicate the domain knowledge as a second source of truth.

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

## Governance state

The repository role is now formally:

```text
AUTHORITY_ROLE=DOMAIN_KNOWLEDGE_AUTHORITY
AUTHORITY_DOMAIN=AUDI_MMI_3G
VEHICLE_SPECIFIC_RAW_EVIDENCE_OWNER=Speedeerq/audi-a4-b8-master-workshop-manual
DOWNSTREAM_PLATFORM=Speedeerq/remote-automotive-diagnostics-platform
AUTO_CLOSE_REMOTE_GAPS=false
```

See [00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md](00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md) for the bounded synchronization decision.
