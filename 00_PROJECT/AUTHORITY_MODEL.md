# AudiMMI Three-Level Authority Model

## Status

```text
MODEL_ID=AUDIMMI-AUTHORITY-MODEL-001
STATUS=ACTIVE
EFFECTIVE_DATE=2026-09-04
SCOPE=AudiMMI / Remote Automotive Diagnostics
```

## Purpose

This document defines the canonical ownership boundary between vehicle-specific evidence, Audi MMI 3G domain knowledge and the downstream remote diagnostics platform.

The repositories remain independent. They must not be merged into one repository and they must not silently duplicate each other's source-of-truth responsibilities.

## Level 1 — Vehicle Evidence Authority

Canonical repository:

```text
Speedeerq/audi-a4-b8-master-workshop-manual
```

Role:

```text
VEHICLE_EVIDENCE_AUTHORITY
```

Owns evidence tied to a concrete vehicle, controller and diagnostic session, including where applicable:

- Auto-Scan outputs,
- controller identification,
- blockmaps,
- adaptation maps,
- DTC state,
- Red Menu / Version Information capture,
- screenshots and photographs,
- timestamps,
- before/after observations,
- mutation logs,
- vehicle-specific temporal reconciliation,
- vehicle-specific evidence grades.

This layer proves what was observed on the specific vehicle/session. It does not automatically define a global MMI 3G semantic rule.

## Level 2 — Domain Knowledge Authority

Canonical repository:

```text
Speedeerq/Audi-MMI-3G-Coding-Adaptation-Datasets
```

Role:

```text
DOMAIN_KNOWLEDGE_AUTHORITY
```

Owns verified Audi MMI 3G domain knowledge, including where evidence supports it:

- long-coding semantics,
- adaptation semantics,
- Security Access context,
- dataset metadata and semantics,
- Green Menu / Red Menu research,
- HW/SW/market/equipment variant constraints,
- compatibility rules,
- cross-module dependencies,
- finding provenance,
- controlled test and rollback evidence references,
- unresolved and variant-dependent domain questions.

This repository is authoritative for domain semantics only within the scope stated by each finding. Repository-level authority does not convert every historical record to globally confirmed status.

Canonical reconciled findings are indexed in:

```text
01_MMI_3G_HIGH/FINDINGS/FINDING_REGISTRY_V1.json
```

## Level 3 — Platform Consumer / Normalization Authority

Canonical repository:

```text
Speedeerq/remote-automotive-diagnostics-platform
```

Role:

```text
PLATFORM_CONSUMER_NORMALIZATION
```

Owns downstream platform contracts, including:

- evidence schemas,
- evidence package validation,
- capture state machines,
- source profiles,
- normalization,
- claim/evidence linking,
- orchestration,
- service-path decisions,
- fail-closed runtime rules,
- import manifests and provenance contracts.

It does not become the canonical owner of raw vehicle evidence or Audi MMI 3G technical semantics merely because those records are consumed by the platform.

## Mandatory provenance contract

Any cross-repository consumption of a domain finding or vehicle observation must preserve sufficient provenance to recover the canonical source.

Minimum recommended fields:

```text
source_repository
source_commit_sha
source_path or stable_finding_id
source_authority_role
variant_scope
status
supporting_evidence_refs
consumed_at
```

When a stable finding ID exists, it should be preferred over a path-only reference.

## Stable finding ID policy

New or reconciled domain findings should receive stable IDs using an area-oriented namespace.

Recommended patterns:

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

Namespace intent:

- `ID` — exact controller/unit identity finding;
- `OBS` — observed UI/runtime value whose technical interpretation may be separate;
- `COD` — coding semantics;
- `ADP` — adaptation semantics;
- `SA` — Security Access context;
- `DSET` — dataset metadata/semantics;
- `VAR` — HW/SW/train/build-specific variant finding;
- `COMPAT` — compatibility rule;
- `DEP` — module/dependency context.

A finding ID must not imply a higher evidence status than the record actually has.

Observation truth and interpretation truth must be represented independently when they differ. A visible value may be `CONFIRMED` while its root cause or function remains `TO VERIFY` or `UNKNOWN`.

## Authority precedence

Authority is contextual, not a single global ranking.

| Question | Canonical authority |
|---|---|
| What was observed on this exact car/session? | Vehicle Evidence Authority |
| What does this coding/adaptation/dataset mean for the verified MMI variant? | Domain Knowledge Authority |
| How is evidence packaged, validated and consumed by the remote service? | Platform Consumer / Normalization |

If two repositories appear to conflict, do not overwrite one with the other. Record the conflict, retain provenance and resolve it at the appropriate authority layer.

## Gap closure rule

A Remote Platform gap may be closed from this domain repository only when a specific source record directly supports the exact claim and its variant scope matches the target claim.

Forbidden shortcuts:

- closing a gap solely because this repository is trusted,
- inferring a missing byte/bit/channel meaning from neighboring records,
- promoting a vehicle-specific observation into a global domain rule without appropriate domain evidence,
- copying a domain value into Remote Platform without source SHA/provenance,
- treating absence of a finding as evidence of absence.

## Current protected open questions

The authority-model decision does not by itself close currently open technical questions, including:

```text
Variant 9307 filesystem identity mapping
5F E1 -> E3 functional bit semantics
J285 channel 73 value 1 -> exact language mapping
0BK adaptation/fill health thresholds
```

The 2026-09-04 reconciliation review found only partial support for the Variant 9307 gap and no direct match for the remaining questions. Their downstream statuses remain open.

Each requires a direct evidence-backed finding before downstream status promotion.

## Safety boundary

No authority-layer or finding-registry change authorizes:

- vehicle coding,
- adaptation writes,
- Security Access execution,
- dataset writes,
- firmware flashing,
- DTC clear,
- production database mutation,
- secret rotation,
- deployment or publication.

Those remain separately gated operations.

## Repository separation invariant

```text
MERGE_REPOSITORIES=false
DUPLICATE_SOURCE_OF_TRUTH=false
PRESERVE_PROVENANCE=true
FAIL_CLOSED_ON_SCOPE_MISMATCH=true
AUTO_PROMOTE_HISTORICAL_STATUS=false
AUTO_CLOSE_DOWNSTREAM_GAPS=false
```
