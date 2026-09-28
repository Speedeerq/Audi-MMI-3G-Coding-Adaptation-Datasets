# Governance Sync — 2026-09-28

Control: `AUDIMMI-VEHICLE-EVIDENCE-AUTHORITY-RECON-001`

## Reason

The 2026-09-04 three-level model assigned generic `VEHICLE_EVIDENCE_AUTHORITY` to the A4 B8 project repository. AudiMMI Core subsequently established canonical Case/Evidence/review semantics in `Speedeerq/audimmi-web`.

Wave 0 reconciles the MMI 3G domain repository to that newer authority model without changing any technical MMI finding.

## Current authority

```text
Speedeerq/audimmi-web
ROLE=CANONICAL_CORE

Speedeerq/audi-a4-b8-master-workshop-manual
ROLE=VEHICLE_PROJECT_SOURCE

Speedeerq/Audi-MMI-3G-Coding-Adaptation-Datasets
ROLE=DOMAIN_KNOWLEDGE_AUTHORITY

Speedeerq/remote-automotive-diagnostics-platform
ROLE=PLATFORM_CONSUMER_NORMALIZATION
```

## Preserved facts

- MMI 3G finding IDs and technical status are unchanged.
- No open Remote Platform gap is closed by this governance sync.
- No raw evidence is copied.
- 2026-09-04 release/governance documents remain historical records.
- Cross-repository consumers must preserve provenance.
- Vehicle/project evidence does not become reusable domain semantics without review.

## Safety

```text
TECHNICAL_FINDINGS_MODIFIED=false
DATABASE_MODIFIED=false
SECRETS_MODIFIED=false
DEPLOYMENT_PERFORMED=false
VEHICLE_MODIFIED=false
```
