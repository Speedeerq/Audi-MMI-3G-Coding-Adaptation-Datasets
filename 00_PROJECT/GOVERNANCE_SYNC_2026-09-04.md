# Governance Sync — 2026-09-04

## Workstream

```text
AUDIMMI-MMI3G-KB-GOV-SYNC-001
```

## Decision

The project owner confirmed that the technical data published in this repository are real and verified project data.

The repository is therefore formally established as the AudiMMI MMI 3G domain knowledge authority.

This decision corrects repository-level governance drift. It does not authorize blind bulk promotion of every historical status field without record-level reconciliation.

## Canonical role

```text
REPOSITORY=Speedeerq/Audi-MMI-3G-Coding-Adaptation-Datasets
AUTHORITY_ROLE=DOMAIN_KNOWLEDGE_AUTHORITY
AUTHORITY_DOMAIN=AUDI_MMI_3G
STATUS=ACTIVE
EFFECTIVE_DATE=2026-09-04
```

## Three-level authority topology

```text
LEVEL 1
Speedeerq/audi-a4-b8-master-workshop-manual
ROLE=VEHICLE_EVIDENCE_AUTHORITY

        vehicle/session evidence
                 |
                 v
LEVEL 3          +-------------------+
Speedeerq/remote-automotive-diagnostics-platform
ROLE=PLATFORM_CONSUMER_NORMALIZATION
                 ^
                 |
          domain findings

LEVEL 2
Speedeerq/Audi-MMI-3G-Coding-Adaptation-Datasets
ROLE=DOMAIN_KNOWLEDGE_AUTHORITY
```

The repositories remain independent.

## Governance drift identified

Before this sync, several project-level documents still described the repository as an offline research package waiting for evidence and stated that no confirmed technical values were present.

That repository-level description is no longer authoritative after the project-owner decision recorded above.

However, historical item-level statuses such as:

```text
TO VERIFY
UNKNOWN
Pending
HYPOTHESIS
VARIANT
```

must not be rewritten mechanically. Each record must be reconciled against its actual evidence, provenance and variant scope.

## Bounded scope of this synchronization

This synchronization may:

- establish repository authority role,
- define cross-repository ownership boundaries,
- define provenance requirements,
- update stale repository-level status text,
- add stable finding-ID policy,
- record protected open questions,
- prepare a later item-level reconciliation workstream.

This synchronization must not:

- invent technical values,
- infer missing byte/bit meanings,
- infer missing adaptation semantics,
- publish Security Access values not already supported,
- create binary datasets,
- alter vehicle state,
- close Remote Platform gaps solely because this repository is trusted,
- merge repositories,
- duplicate canonical raw vehicle evidence.

## Downstream integration contract

`Speedeerq/remote-automotive-diagnostics-platform` should consume this repository as:

```text
upstream_role=DOMAIN_KNOWLEDGE_AUTHORITY
```

For every imported or referenced technical finding, downstream provenance should preserve:

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

The Remote Platform must not create a second independent source of truth for the same MMI 3G semantic data.

## Protected open questions

The following downstream questions remain open after this governance sync unless a direct matching domain record is identified:

| Question | Current state | Governance decision |
|---|---|---|
| Variant `9307` filesystem identity mapping | BLOCKED / TO_VERIFY | Remains open |
| 5F `E1 -> E3` functional bit semantics | TO_VERIFY | Remains open |
| J285 channel `73`, value `1` exact language mapping | TO_VERIFY | Remains open |
| 0BK adaptation/fill health thresholds | TO_VERIFY | Remains open |
| Airbag B1024 physical root cause | DEFERRED | Outside MMI3G domain closure |

## Next controlled workstream

After this governance sync is reviewed, the next workstream should be item-level knowledge reconciliation:

```text
AUDIMMI-MMI3G-KB-RECONCILE-001
```

Objectives:

1. enumerate technical findings currently published in the repository;
2. attach or normalize stable finding IDs;
3. preserve exact HW/SW/market/equipment scope;
4. map each finding to evidence/provenance;
5. reconcile stale item-level statuses;
6. identify direct matches to currently open Remote Platform gaps;
7. produce an import/reference manifest without duplicating raw evidence.

## Safety state

```text
DATABASE_MODIFIED=false
SECRETS_MODIFIED=false
DEPLOYMENT_PERFORMED=false
VEHICLE_STATE_MODIFIED=false
REPOSITORIES_MERGED=false
RAW_EVIDENCE_DUPLICATED=false
```
