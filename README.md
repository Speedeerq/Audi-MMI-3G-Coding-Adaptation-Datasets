# Audi MMI 3G Coding / Adaptation / Dataset Research

> Evidence-based domain knowledge authority for Audi MMI 3G High coding, adaptations, Security Access, datasets, hidden functions, test evidence, and cross-module dependencies.

## Navigation

| Area | Link |
|---|---|
| Repository navigation map | [NAVIGATION.md](NAVIGATION.md) |
| Authority model | [00_PROJECT/AUTHORITY_MODEL.md](00_PROJECT/AUTHORITY_MODEL.md) |
| Governance sync | [00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md](00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md) |
| Canonical finding registry | [01_MMI_3G_HIGH/FINDINGS/README.md](01_MMI_3G_HIGH/FINDINGS/README.md) |
| Machine-readable findings | [01_MMI_3G_HIGH/FINDINGS/FINDING_REGISTRY_V1.json](01_MMI_3G_HIGH/FINDINGS/FINDING_REGISTRY_V1.json) |
| Remote Platform reference manifest | [00_PROJECT/REMOTE_PLATFORM_REFERENCE_MANIFEST_2026-09-04.json](00_PROJECT/REMOTE_PLATFORM_REFERENCE_MANIFEST_2026-09-04.json) |
| Reconciliation report | [13_RELEASE/RECONCILIATION_REPORT_2026-09-04.md](13_RELEASE/RECONCILIATION_REPORT_2026-09-04.md) |
| Evidence intake workflow | [docs/evidence_intake/README.md](docs/evidence_intake/README.md) |
| Roadmap | [ROADMAP.md](ROADMAP.md) |
| Changelog | [CHANGELOG.md](CHANGELOG.md) |
| MMI 3G High index | [01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md](01_MMI_3G_HIGH/MMI_3G_HIGH_INDEX.md) |
| Offline research layer | [01_MMI_3G_HIGH/OFFLINE_RESEARCH/README.md](01_MMI_3G_HIGH/OFFLINE_RESEARCH/README.md) |
| Compatibility matrix | [12_COMPATIBILITY/MMI_3G_HIGH_COMPATIBILITY_MATRIX.md](12_COMPATIBILITY/MMI_3G_HIGH_COMPATIBILITY_MATRIX.md) |
| Final progress report | [13_RELEASE/FINAL_PROGRESS_REPORT.md](13_RELEASE/FINAL_PROGRESS_REPORT.md) |

## Project purpose

This repository is the AudiMMI domain knowledge authority for Audi MMI 3G coding, adaptation, dataset, runtime and variant research.

Primary focus:

1. Audi MMI 3G High
2. Audi MMI 3G Basic
3. Audi MMI 3G+
4. related VAG/Audi modules where they materially affect infotainment behavior.

The repository stores verified domain knowledge, research records, variant constraints, compatibility rules and evidence-linked findings. It is not a blind coding guide and it is not the canonical store for raw evidence from a specific vehicle.

## Authority boundary

The AudiMMI architecture uses three separate authority layers:

| Layer | Repository | Canonical responsibility |
|---|---|---|
| Vehicle Evidence Authority | `Speedeerq/audi-a4-b8-master-workshop-manual` | Raw and normalized evidence tied to a specific vehicle/session: Auto-Scans, blockmaps, adaptation maps, screenshots, timestamps and vehicle-specific observations |
| Domain Knowledge Authority | `Speedeerq/Audi-MMI-3G-Coding-Adaptation-Datasets` | Verified MMI 3G semantics, identity/variant findings, coding/adaptation knowledge, dataset knowledge, compatibility constraints and research provenance |
| Platform Consumer / Normalization | `Speedeerq/remote-automotive-diagnostics-platform` | Evidence schemas, capture contracts, normalization, validation, orchestration and downstream service logic |

No repository may silently replace the authority of another layer. Cross-repository consumption must preserve source repository, commit SHA and evidence/finding provenance.

Full contract: [00_PROJECT/AUTHORITY_MODEL.md](00_PROJECT/AUTHORITY_MODEL.md).

## Current repository phase

Current candidate state:

```text
GOVERNANCE=SYNCED
AUTHORITY_ROLE=DOMAIN_KNOWLEDGE_AUTHORITY
RECONCILIATION_WORKSTREAM=AUDIMMI-MMI3G-KB-RECONCILE-001
RECONCILIATION_STATUS=PASS_WITH_OPEN_GAPS
CANONICAL_FINDING_REGISTRY=AUDIMMI-MMI3G-FINDINGS-V1
AUTO_CLOSE_REMOTE_GAPS=false
```

The first controlled reconciliation normalizes 11 scoped findings:

- 6 target-HNAV identity/UI/dependency findings;
- 5 HN+ build-specific hardware/runtime findings.

Vehicle-specific Auto-Scan and DTC records remain references, not global MMI semantics.

Important distinction:

- an exact displayed or captured value may be `CONFIRMED` while its technical interpretation remains `TO VERIFY` or `UNKNOWN`;
- repository-level authority does not make every historical record globally confirmed;
- historical `TO VERIFY`, `UNKNOWN`, `Pending`, `HYPOTHESIS` and `VARIANT` labels are reconciled only where later repository evidence explicitly supports the change;
- absence of a direct finding does not prove or disprove a semantic claim.

## Reconciled knowledge model

Stable finding namespaces include:

```text
MMI3G-ID-<MODULE>-<NNNN>
MMI3G-OBS-<AREA>-<NNNN>
MMI3G-COD-<MODULE>-<NNNN>
MMI3G-ADP-<MODULE>-<NNNN>
MMI3G-SA-<MODULE>-<NNNN>
MMI3G-DSET-<NNNN>
MMI3G-VAR-<SCOPE>-<NNNN>
MMI3G-COMPAT-<NNNN>
MMI3G-DEP-<SCOPE>-<NNNN>
```

The canonical candidate registry is [01_MMI_3G_HIGH/FINDINGS/FINDING_REGISTRY_V1.json](01_MMI_3G_HIGH/FINDINGS/FINDING_REGISTRY_V1.json).

## Current Remote Platform gap result

The 2026-09-04 reconciliation remains fail-closed:

| Gap | Domain match | Current decision |
|---|---|---|
| Variant `9307` filesystem identity mapping | `PARTIAL_SUPPORT_ONLY` | remains `BLOCKED` |
| 5F `E1 -> E3` functional bit semantics | `NO_DIRECT_MATCH` | remains `TO_VERIFY` |
| J285 channel `73`, value `1` exact language mapping | `NO_DIRECT_MATCH` | remains `TO_VERIFY` |
| 0BK / AL551 adaptation/fill health thresholds | `OUT_OF_DOMAIN_NO_MATCH` | remains `TO_VERIFY` |
| Airbag B1024 physical root cause | `OUT_OF_SCOPE` | remains `DEFERRED` |

Displayed HNAV `Variant 9307` is a confirmed target observation, but it is not proven equivalent to the numeric suffix of `/etc/pci-3g_<ID>.cfg`. Direct `9307 -> MMI3G_HIGH` mapping therefore remains forbidden.

## Scope

The repository documents:

| Area | Description | Status policy |
|---|---|---|
| Identity / Variant | Controller identity, Red/Green Menu identity, build-specific runtime traits | Exact scope and provenance required |
| Long Coding | Byte/bit mapping, labels, observed effects, dependencies, rollback paths | Every semantic claim must retain variant and evidence scope |
| Adaptations | Channels, values, defaults, observed effects, Security Access requirements | Every promoted channel must retain evidence/provenance |
| Security Access | Operation-specific login/access context | No guessing allowed |
| Datasets | Address/function/value mapping, source, checksum notes, backup requirements | No uncontrolled binary publication |
| Green Menu / Red Menu | Hidden engineering menus, observed functions and identity | Observation and interpretation status kept separate |
| Compatibility | HW/SW version, market, PR-code and equipment dependencies | Variant matrix required |
| Test / Evidence | Controlled observations and rollback verification | Required where technical promotion depends on test evidence |

## Supported systems

| System | Priority | Repository status |
|---|---:|---|
| MMI 3G High | P0 | Active domain baseline with canonical finding registry candidate |
| MMI 3G Basic | P2 | Limited / expand only with evidence-backed records |
| MMI 3G+ | P3 | Limited / build-specific findings already exist; broader expansion remains variant-gated |

Related modules include `5F`, `56`, `07`, `09`, `17`, `19`, `46`, `47`, `6C`, `10` and `55` where they materially affect MMI behavior.

## Information status legend

| Status | Meaning | Usage rule |
|---|---|---|
| `CONFIRMED` | Confirmed by accepted evidence for the stated scope | Reference only with scope and provenance |
| `VARIANT` | Valid only for specific HW/SW/build/market/equipment context | Never generalize outside the recorded scope |
| `TO VERIFY` | Additional proof or semantic reconciliation required | Do not use as operational fact |
| `HYPOTHESIS` | Research hypothesis only | Do not apply as instruction |
| `UNKNOWN` | Function or meaning unresolved | Keep unresolved until evidence exists |
| `BLOCKED` | Claim or operation cannot progress under current evidence/safety state | Fail closed |

## Safety warning

This repository must not be used as a blind-click coding list.

Before applying any vehicle-state change, the target vehicle must be identified with sufficient evidence, including controller identity, software context, current state, variant/market context and rollback capability appropriate to the operation.

No finding-registry or authority-model change authorizes coding, adaptation writes, Security Access, DTC clearing, dataset writes, firmware/SWDL operations, EEPROM/HDD modification or other vehicle-state mutation.

Detailed rules: [00_PROJECT/SAFETY_RULES.md](00_PROJECT/SAFETY_RULES.md).

## Cross-repository consumption rule

Any downstream system consuming a technical finding from this repository should retain at minimum:

```text
source_repository
source_commit_sha
stable_finding_id
source_authority_role
variant_scope
claim_status
supporting_evidence_refs
consumed_at
```

Remote Platform must reference this repository as `DOMAIN_KNOWLEDGE_AUTHORITY`; it must not silently fork or duplicate domain knowledge as a second source of truth.

Reference contract: [00_PROJECT/REMOTE_PLATFORM_REFERENCE_MANIFEST_2026-09-04.json](00_PROJECT/REMOTE_PLATFORM_REFERENCE_MANIFEST_2026-09-04.json).

## Repository layout

```text
Audi-MMI-3G-Coding-Adaptation-Datasets/
├── 00_PROJECT/
├── 01_MMI_3G_HIGH/
│   └── FINDINGS/
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
├── schemas/
├── NAVIGATION.md
├── README.md
├── CHANGELOG.md
└── ROADMAP.md
```

## Governance state

```text
AUTHORITY_ROLE=DOMAIN_KNOWLEDGE_AUTHORITY
AUTHORITY_DOMAIN=AUDI_MMI_3G
VEHICLE_SPECIFIC_RAW_EVIDENCE_OWNER=Speedeerq/audi-a4-b8-master-workshop-manual
DOWNSTREAM_PLATFORM=Speedeerq/remote-automotive-diagnostics-platform
PRESERVE_PROVENANCE=true
AUTO_PROMOTE_HISTORICAL_STATUS=false
AUTO_CLOSE_REMOTE_GAPS=false
```
