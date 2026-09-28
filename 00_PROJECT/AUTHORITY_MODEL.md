# AudiMMI Cross-Repository Authority Model

## Status

```text
MODEL_ID=AUDIMMI-AUTHORITY-MODEL-002
STATUS=ACTIVE
EFFECTIVE_DATE=2026-09-28
SUPERSEDES=AUDIMMI-AUTHORITY-MODEL-001
SCOPE=AudiMMI Core / Vehicle Project Evidence / MMI 3G Domain Knowledge / Remote Diagnostics
```

## Purpose

This document defines the current ownership boundary between canonical Core evidence semantics, vehicle-project evidence sources, Audi MMI 3G domain knowledge and the downstream Remote Diagnostics platform.

It supersedes the 2026-09-04 three-level model that incorrectly treated the single A4 B8 project repository as the generic AudiMMI Vehicle Evidence Authority.

Repositories remain independent and provenance must be preserved.

## Level 1 — Canonical Core Case / Evidence / Review Authority

Canonical repository:

```text
Speedeerq/audimmi-web
```

Role:

```text
CANONICAL_CORE
```

Owns canonical semantics for:

- Case and Vehicle identity,
- EvidencePackage / EvidenceItem,
- CandidateFact,
- DiagnosticObservation,
- TechnicalReview,
- VerifiedFact,
- DiagnosticReviewDecision / ReviewedDiagnosticFinding,
- reusable technical-rule governance,
- ServicePath and controlled downstream projections.

Authority invariant:

```text
CandidateFact != VerifiedFact
DiagnosticObservation != VerifiedFact
Correlation != causation
```

Only the canonical Core review boundary may create Core-reviewed fact authority.

## Level 2 — Vehicle Project Evidence Sources

Examples include:

```text
Speedeerq/audi-a4-b8-master-workshop-manual
private AudiMMI case archives
future vehicle-specific evidence packages
```

Role:

```text
VEHICLE_PROJECT_SOURCE
```

These sources preserve evidence tied to a concrete vehicle/controller/session, such as:

- Auto-Scans,
- controller identification,
- blockmaps,
- adaptation maps,
- DTC state,
- Red/Green Menu capture,
- screenshots/photos,
- timestamps,
- before/after observations,
- vehicle-specific temporal reconciliation.

A vehicle-project repository is authoritative for its own project evidence provenance. It is **not** the generic cross-product Case/Evidence semantic authority for AudiMMI.

Vehicle-project observations enter the canonical Core through provenance-preserving intake/review.

## Level 3 — Domain Knowledge Authority

Canonical repository:

```text
Speedeerq/Audi-MMI-3G-Coding-Adaptation-Datasets
```

Role:

```text
DOMAIN_KNOWLEDGE_AUTHORITY
```

Owns reviewed Audi MMI 3G domain knowledge within the explicit scope of each finding:

- coding/adaptation semantics,
- Security Access context,
- dataset metadata and semantics,
- Green/Red Menu research,
- HW/SW/market/equipment variant constraints,
- compatibility findings,
- cross-module dependencies,
- domain finding provenance,
- unresolved and variant-dependent research questions.

Repository-level authority never upgrades an unsupported record or widens its scope.

Canonical findings are indexed in:

```text
01_MMI_3G_HIGH/FINDINGS/FINDING_REGISTRY_V1.json
```

## Level 4 — Platform Consumer / Capture / Normalization

Canonical repository:

```text
Speedeerq/remote-automotive-diagnostics-platform
```

Role:

```text
PLATFORM_CONSUMER_NORMALIZATION
```

Owns downstream platform/capture contracts:

- evidence schemas,
- Evidence Package validation,
- capture state machines,
- source profiles,
- normalization,
- claim/evidence linking,
- orchestration,
- fail-closed platform rules,
- import/reference manifests and provenance contracts.

It does not become canonical Core authority merely because it captures or consumes evidence. It also does not become the MMI 3G semantic authority merely because it references domain findings.

## Mandatory provenance contract

Cross-repository consumption must preserve enough provenance to recover the canonical source.

Minimum recommended fields:

```text
source_repository
source_commit_sha
source_path or stable_finding_id
source_authority_role
case_id / vehicle_project_ref where applicable
variant_scope
status
supporting_evidence_refs
consumed_at
```

Stable finding IDs are preferred over path-only references when available.

## Stable finding ID policy

New or reconciled MMI 3G domain findings should use the established area-oriented namespaces:

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

A finding ID never implies evidence strength above the underlying record.

## Authority precedence

Authority is contextual.

| Question | Canonical authority |
|---|---|
| What are the canonical Case/Evidence/review semantics? | AudiMMI Core / `audimmi-web` |
| What was captured in this exact vehicle project/session? | The provenance-linked vehicle-project/private raw evidence source, represented in Core when ingested |
| What does this MMI 3G coding/adaptation/dataset mean for a stated scope? | MMI 3G Domain Knowledge Authority |
| How is evidence captured/packaged/normalized in the remote platform? | Remote Diagnostics Platform |
| Is a reusable technical rule active for downstream qualification? | Core technical governance / approved scoped TechnicalRule |

If sources appear to conflict, preserve both records and resolve the conflict at the authority layer that owns the affected question.

## Gap closure rule

A Remote Diagnostics gap may be closed from this domain repository only when a specific finding directly supports the exact claim and its scope matches.

Forbidden shortcuts:

- closing a gap because the repository is generally trusted;
- inferring byte/bit/channel meaning from neighboring values;
- promoting one vehicle observation into a reusable domain rule without domain evidence/review;
- copying a domain value downstream without source SHA/provenance;
- treating absence of a finding as evidence of absence.

## Protected open questions

This governance repair does not close technical questions such as:

```text
Variant 9307 filesystem identity mapping
5F E1 -> E3 functional bit semantics
J285 channel 73 value 1 -> exact language mapping
0BK adaptation/fill health thresholds
```

Each still requires direct evidence-backed review.

## Safety boundary

No authority or finding change authorizes:

- vehicle coding,
- adaptation writes,
- Security Access execution,
- dataset writes,
- firmware flashing,
- DTC clear,
- production database mutation,
- secret rotation,
- deployment or publication.

## Repository separation invariant

```text
MERGE_REPOSITORIES=false
DUPLICATE_SOURCE_OF_TRUTH=false
PRESERVE_PROVENANCE=true
FAIL_CLOSED_ON_SCOPE_MISMATCH=true
AUTO_PROMOTE_HISTORICAL_STATUS=false
AUTO_CLOSE_DOWNSTREAM_GAPS=false
```

Historical 2026-09-04 governance/release documents remain historical records and are superseded only where this model explicitly changes authority ownership.
