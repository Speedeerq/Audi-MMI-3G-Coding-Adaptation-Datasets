# PROJECT BRIEF

## Project name

**Audi MMI 3G Coding / Adaptation / Dataset Research**

Repository name:

```text
Audi-MMI-3G-Coding-Adaptation-Datasets
```

## Canonical authority role

```text
AUTHORITY_ROLE=DOMAIN_KNOWLEDGE_AUTHORITY
AUTHORITY_DOMAIN=AUDI_MMI_3G
STATUS=ACTIVE
EFFECTIVE_DATE=2026-09-04
```

This repository is the canonical AudiMMI domain knowledge authority for verified MMI 3G technical knowledge. It is not the canonical raw-evidence store for a specific vehicle and it is not the downstream Remote Platform source of truth for platform schemas.

The full cross-repository ownership contract is defined in [AUTHORITY_MODEL.md](AUTHORITY_MODEL.md).

## Research objective

Build and maintain a structured, evidence-based repository documenting configuration behavior of Audi MMI 3G systems and related control modules.

The project is focused on:

- long coding,
- adaptation channels,
- Security Access / login requirements,
- datasets and parameterization,
- hidden engineering functions,
- unknown byte/bit behavior,
- cross-module dependencies,
- lighting configuration,
- safe test protocols,
- rollback and evidence,
- variant-aware compatibility,
- stable provenance for downstream consumers.

## Non-goals

This repository is not:

| Non-goal | Reason |
|---|---|
| A blind coding guide | Unknown or variant-dependent settings can cause faults |
| A login/code dump | Security Access must be contextual and verified |
| An uncontrolled binary dataset repository | Source, legality and checksum must be controlled |
| A retrofit promise list | Equipment, market and software variants matter |
| A shortcut around diagnostics | Every target vehicle still requires identification and pre/post evidence appropriate to the operation |
| A raw vehicle evidence repository | Vehicle/session evidence belongs to the Vehicle Evidence Authority |
| A duplicate Remote Platform knowledge store | Downstream consumers must preserve provenance instead of forking the source of truth |

## Primary research target

| System | Priority | Notes |
|---|---:|---|
| Audi MMI 3G High | P0 | Primary active domain baseline |
| Audi MMI 3G Basic | P2 | Limited / expand with evidence-backed records |
| Audi MMI 3G+ | P3 | Limited / expand with evidence-backed records |

## Related modules

| Address | Module | Research relevance |
|---:|---|---|
| 5F | Information Electronics | Infotainment coding/adaptations/datasets |
| 56 | Radio | Some variants expose radio/infotainment behavior here |
| 07 | Control Head | MMI controls and front panel dependencies |
| 09 | Central Electrics / BCM / J519 | Exterior lights, DRL, CH/LH, vehicle electrical config |
| 17 | Instrument Cluster | Menu visibility, driver information display, language/vehicle state |
| 19 | CAN Gateway | Installation list, network dependencies, power management |
| 46 | Central Convenience | Comfort functions and body configuration |
| 47 | Sound System | Amplifier, MOST, B&O/Bose/external audio dependencies |
| 6C | Rear View Camera | RVC coding, MMI display behavior, parking dependencies |
| 10 | Park Assist | OPS/APS dependencies and MMI car menu interaction |
| 55 | Headlight Range | Xenon/AFS/leveling dependencies |

## Research principles

| Principle | Rule |
|---|---|
| Evidence first | A technical claim must retain evidence/provenance appropriate to its scope |
| Variant awareness | HW/SW/market/equipment may change behavior |
| Safety before testing | Backup and rollback are mandatory where a controlled mutation is performed |
| Unknowns are documented | Unknown bits/channels are not ignored |
| No false certainty | Status must reflect evidence quality and variant scope |
| Reproducibility | Tests should be repeatable by another researcher |
| Traceability | Every promoted result links to a test ID, evidence reference or authoritative source |
| Authority separation | Vehicle evidence, domain knowledge and platform normalization remain separate sources of truth |

## Information status requirement

Historical and current entries may use:

| Status | Meaning |
|---|---|
| 🟢 CONFIRMED | Confirmed for the stated evidence/variant scope |
| 🟡 VARIANT | Confirmed only for specific variants |
| 🟠 TO VERIFY | Requires record-level reconciliation or additional proof |
| 🔴 HYPOTHESIS | Research hypothesis |
| ⚫ UNKNOWN | Function unknown |

Repository-level status `DOMAIN_KNOWLEDGE_AUTHORITY` does not automatically promote every historical item. Item-level promotion remains evidence- and scope-specific.

## Evidence requirements

For a newly promoted `🟢 CONFIRMED` coding/adaptation finding, retain as applicable:

1. controller address,
2. controller part number,
3. software version,
4. vehicle/model/market or equivalent variant scope,
5. original value,
6. modified value where a controlled test occurred,
7. observed effect,
8. DTC before/after where relevant,
9. rollback result where relevant,
10. linked test log/source/evidence reference,
11. source repository and commit provenance where evidence is external to this repository.

Existing published project data are accepted as verified domain data by project-owner decision dated 2026-09-04. Historical per-record labels that conflict with that project decision must be reconciled individually rather than changed mechanically.

## Cross-repository architecture

```text
Vehicle Evidence Authority
Speedeerq/audi-a4-b8-master-workshop-manual
        |
        | vehicle/session observations
        v
Remote Platform
Speedeerq/remote-automotive-diagnostics-platform
        ^
        | verified domain findings
        |
Domain Knowledge Authority
Speedeerq/Audi-MMI-3G-Coding-Adaptation-Datasets
```

The repositories remain independent.

## Project operating mode

Current stage:

```text
Governance synchronized / domain authority active / item-level reconciliation pending
```

Current controlled next stage:

```text
AUDIMMI-MMI3G-KB-RECONCILE-001
```

Expected outputs:

- inventory existing technical findings,
- stable finding IDs,
- evidence/provenance mapping,
- variant-scope normalization,
- reconciliation of stale item-level statuses,
- direct-match assessment against open Remote Platform gaps,
- downstream reference/import manifest without raw-evidence duplication.

Do not invent bytes, bits, logins, channel meanings, dataset addresses or compatibility claims that are not directly supported by a verified record.
