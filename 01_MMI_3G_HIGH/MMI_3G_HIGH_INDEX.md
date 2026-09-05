# MMI 3G High — Structure Index

## Navigation

| Area | Link |
|---|---|
| Repository navigation | [../NAVIGATION.md](../NAVIGATION.md) |
| Root README | [../README.md](../README.md) |
| Authority model | [../00_PROJECT/AUTHORITY_MODEL.md](../00_PROJECT/AUTHORITY_MODEL.md) |
| Governance sync | [../00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md](../00_PROJECT/GOVERNANCE_SYNC_2026-09-04.md) |
| Canonical findings | [FINDINGS/README.md](FINDINGS/README.md) |
| Machine-readable registry | [FINDINGS/FINDING_REGISTRY_V1.json](FINDINGS/FINDING_REGISTRY_V1.json) |
| Remote reference manifest | [../00_PROJECT/REMOTE_PLATFORM_REFERENCE_MANIFEST_2026-09-04.json](../00_PROJECT/REMOTE_PLATFORM_REFERENCE_MANIFEST_2026-09-04.json) |
| Reconciliation report | [../13_RELEASE/RECONCILIATION_REPORT_2026-09-04.md](../13_RELEASE/RECONCILIATION_REPORT_2026-09-04.md) |
| Roadmap | [../ROADMAP.md](../ROADMAP.md) |
| Changelog | [../CHANGELOG.md](../CHANGELOG.md) |
| Offline research layer | [OFFLINE_RESEARCH/README.md](OFFLINE_RESEARCH/README.md) |

## Current state

```text
AUTHORITY_ROLE=DOMAIN_KNOWLEDGE_AUTHORITY
WORKSTREAM=AUDIMMI-MMI3G-KB-RECONCILE-001
REGISTRY=AUDIMMI-MMI3G-FINDINGS-V1
RECONCILIATION_STATUS=PASS_WITH_OPEN_GAPS
TOTAL_FINDINGS=11
```

Repository governance was synchronized on 2026-09-04. The first controlled item-level reconciliation is now implemented on the reconciliation branch.

Repository authority and item-level claim status remain separate. Historical labels are not mass-promoted; only records with direct accepted evidence and explicit scope are normalized into the canonical candidate registry.

## Canonical reconciled findings

### Target HNAV

| Finding ID | Area | Current status | Scope boundary |
|---|---|---|---|
| `MMI3G-ID-5F-0001` | 5F identity | `CONFIRMED` | historical 2026-05-12 diagnostic session |
| `MMI3G-VAR-HNAV-0001` | HNAV train / Variant / RadioUnit / MU / Sample | `CONFIRMED` | displayed/transcribed target-unit identity only |
| `MMI3G-OBS-GREEN-0001` | Green Menu structure | `CONFIRMED` | visibility only |
| `MMI3G-OBS-GREEN-0002` | Green diagnostic strings | observation `CONFIRMED`; interpretation `TO VERIFY` | root cause/function unresolved |
| `MMI3G-OBS-GREEN-0003` | NADPhone `$ERROR$` | observation `CONFIRMED`; interpretation `UNKNOWN` | cause/module/function unresolved |
| `MMI3G-DEP-GW-0001` | photographed Gateway Installation List | observation `CONFIRMED`; interpretation `VARIANT` | checkbox state is not physical-presence proof |

### HN+ build-specific

| Finding ID | Area | Status | Scope |
|---|---|---|---|
| `MMI3G-VAR-HNPLUS-0001` | Renesas SH7785 / SH4A main CPU | `CONFIRMED` | MMI3GP `MU9411 K0942_4`, source directory `41` only |
| `MMI3G-VAR-HNPLUS-0002` | QNX 6.3.2 | `CONFIRMED` | same build only |
| `MMI3G-VAR-HNPLUS-0003` | 32-bit little-endian SH4 executables | `CONFIRMED` | analyzed image only |
| `MMI3G-VAR-HNPLUS-0004` | `proc_scriptlauncher` / `copie_scr.sh` runtime evidence | `VARIANT` | reviewed runtime only |
| `MMI3G-VAR-HNPLUS-0005` | software-visible EIDE/HDD and SD-controller classes | `VARIANT` | reviewed runtime only |

HN+ build-specific findings must not be projected onto the target HNav unit without exact matching evidence.

## Vehicle-scoped evidence retained separately

The registry references but does not convert into global domain semantics:

```text
HNAV-AUTOSCAN-20260512-001
HNAV-DTC-20260512-001
```

Vehicle/session facts, DTC presence and reachability remain vehicle-scoped evidence.

## Core research files

| Area | File | Historical state | Reconciliation handling |
|---|---|---|---|
| Overview | [MMI_3G_HIGH_OVERVIEW.md](MMI_3G_HIGH_OVERVIEW.md) | mixed / historical | use registry for current promoted findings |
| Long Coding | [MMI_3G_HIGH_LONG_CODING.md](MMI_3G_HIGH_LONG_CODING.md) | mostly UNKNOWN/TO VERIFY | no semantic promotion without direct evidence |
| Adaptations | [MMI_3G_HIGH_ADAPTATIONS.md](MMI_3G_HIGH_ADAPTATIONS.md) | mostly UNKNOWN/TO VERIFY | no semantic promotion without direct evidence |
| Security Access | [MMI_3G_HIGH_SECURITY_ACCESS.md](MMI_3G_HIGH_SECURITY_ACCESS.md) | blocked/mixed | unverified values remain blocked |
| Datasets | [MMI_3G_HIGH_DATASETS.md](MMI_3G_HIGH_DATASETS.md) | blocked/mixed | metadata and semantics remain source/variant gated |
| Green Menu | [MMI_3G_HIGH_GREEN_MENU.md](MMI_3G_HIGH_GREEN_MENU.md) | historical mixed state | exact accepted observations normalized in registry |
| Red Menu | [MMI_3G_HIGH_RED_MENU.md](MMI_3G_HIGH_RED_MENU.md) | historical mixed state | exact identity tuple normalized in registry |
| Audio Sources | [MMI_3G_HIGH_AUDIO_SOURCES.md](MMI_3G_HIGH_AUDIO_SOURCES.md) | TO VERIFY / mixed | preserve MOST/audio variant scope |
| CAR Menu | [MMI_3G_HIGH_CAR_MENU.md](MMI_3G_HIGH_CAR_MENU.md) | TO VERIFY / mixed | no generic dependency promotion |
| Test Matrix | [MMI_3G_HIGH_TEST_MATRIX.md](MMI_3G_HIGH_TEST_MATRIX.md) | historical | evidence/test records remain inputs to findings |

## Baseline authority

Target baseline:

```text
HNAV-8T1035664F-K0257-D1
```

Accepted baseline observations include:

```text
5F SW part: 8T1 035 664 F
5F HW identifier: 8T1 035 664 B
component: H-BN-NA H52
software level: 0187
train: HNav_EU_K0257_5_D1
Variant: 9307
RadioUnit: 9471
MU: 0187
Sample: d1
```

Canonical supporting records include:

- [BASELINES/HNAV_8T1035664F_K0257_D1/OWNER_ATTESTATION_BASELINE_REVIEW_2026-07-12.md](BASELINES/HNAV_8T1035664F_K0257_D1/OWNER_ATTESTATION_BASELINE_REVIEW_2026-07-12.md)
- `evidence/intake/MMI3GHIGH_HNAV_BASELINE_001/OWNER_SOURCE_ATTESTATION_2026-07-12.md`
- `evidence/intake/MMI3GHIGH_HNAV_BASELINE_001/red_menu_observation.json`
- `evidence/intake/MMI3GHIGH_HNAV_BASELINE_001/controller_identification.json`

`Sample d1` is not automatically `/etc/hwSample`. Displayed `Variant 9307` is not automatically the suffix of `/etc/pci-3g_9307.cfg`.

## Offline and research records

The following directories remain valid as research/history inputs:

- [OFFLINE_RESEARCH/](OFFLINE_RESEARCH/)
- [BASELINES/](BASELINES/)
- `../evidence/intake/`
- `../09_TEST_LOGS/`
- `../schemas/`
- `../validation/`

Where a historical document conflicts only in workflow status with a later accepted owner-attestation record, the later explicit acceptance controls source-confirmation status. Technical interpretation boundaries remain unchanged unless separately proven.

## Remote Platform gap reconciliation

| Gap | Match | Decision |
|---|---|---|
| Variant `9307` filesystem identity mapping | `PARTIAL_SUPPORT_ONLY` | remains `BLOCKED` |
| 5F `E1 -> E3` functional bit semantics | `NO_DIRECT_MATCH` | remains `TO_VERIFY` |
| J285 channel `73`, value `1` exact language mapping | `NO_DIRECT_MATCH` | remains `TO_VERIFY` |
| 0BK adaptation/fill health thresholds | `OUT_OF_DOMAIN_NO_MATCH` | remains `TO_VERIFY` |
| Airbag B1024 physical root cause | `OUT_OF_SCOPE` | remains `DEFERRED` |

`GAP-006` receives partial support because the displayed target value `Variant 9307` is confirmed. The required filesystem co-attribution is still absent, so no direct `9307 -> MMI3G_HIGH` mapping is allowed.

## Evidence authority boundary

Vehicle/session evidence remains canonical in:

```text
Speedeerq/audi-a4-b8-master-workshop-manual
ROLE=VEHICLE_EVIDENCE_AUTHORITY
```

This repository owns scoped MMI3G domain findings. Downstream Remote Platform consumption must preserve repository/commit/finding provenance and must not duplicate raw vehicle evidence.

## Current decision

```text
AUDIMMI-MMI3G-KB-RECONCILE-001=IMPLEMENTED_CANDIDATE
RESULT=PASS_WITH_OPEN_GAPS
AUTO_CLOSE_REMOTE_GAPS=false
WRITE_AUTHORIZATION=false
```

Next gate: review the stacked reconciliation PR. After review PASS, integrate only the reference/provenance contract downstream; do not auto-close unresolved technical gaps.
