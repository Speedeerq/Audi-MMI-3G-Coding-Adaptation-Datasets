# MMI 3G High — Dataset Research

## Purpose

This file documents Audi MMI 3G High dataset and parameterization research.

No binary datasets are generated or published here without verified source and release decision.

## Rules

| Rule | Requirement |
|---|---|
| No binary generation from assumptions | Required |
| Source must be recorded | Required |
| Checksum/hash must be recorded when binary source is discussed | Required |
| Backup is mandatory before any dataset operation | Required |
| Address/function mapping must be variant-aware | Required |
| Unknown addresses/functions stay `⚫ UNKNOWN` | Required |

## Dataset entry template

```markdown
## Dataset entry — UNKNOWN

| Field | Value |
|---|---|
| Address | UNKNOWN |
| Function | UNKNOWN |
| System | MMI 3G High |
| Possible values | UNKNOWN |
| Checksum | UNKNOWN |
| Source | UNKNOWN |
| Risk | CRITICAL until classified |
| Backup required | Yes |
| Status | ⚫ UNKNOWN |
```

## Dataset register

| ID | Address | Function | Source | Checksum/hash | Risk | Status | Evidence |
|---|---|---|---|---|---|---|---|
| HIGH-DATASET-001 | TBD | TBD | TBD | TBD | CRITICAL | ⚫ UNKNOWN | None |

## Backup requirements

Before dataset or parameterization research:

| Requirement | Mandatory |
|---|---:|
| Full Auto-Scan | Yes |
| Controller part number | Yes |
| Software version | Yes |
| Original dataset backup | Yes |
| Tool/method recorded | Yes |
| Battery/power support | Yes |
| Recovery path | Yes |
| DTC before/after | Yes |

## Dataset source classification

| Source class | Description | Default status |
|---|---|---|
| OEM/official source | Traceable official package or service output | 🟠 TO VERIFY until matched to controller |
| Vehicle backup | Read from a known vehicle/controller | 🟡 VARIANT after metadata is complete |
| Community file | Shared by third party | 🟠 TO VERIFY or 🔴 HYPOTHESIS |
| Unknown binary | No source or metadata | ⚫ UNKNOWN / do not use |
| Manually generated file | Created without verified source | Not allowed for release |

## Risk notes

Dataset changes can affect:

- boot behavior,
- feature availability,
- region/market configuration,
- language/voice behavior,
- MOST/audio routing,
- camera/parking display,
- diagnostic communication,
- component protection-adjacent behavior,
- recovery complexity.

Treat as `CRITICAL` unless the operation is fully understood and recoverable.

## Open questions

| ID | Question | Status |
|---|---|---|
| HIGH-DATASET-Q001 | Which dataset addresses are used by MMI 3G High variants? | ⚫ UNKNOWN |
| HIGH-DATASET-Q002 | Which functions are dataset-controlled versus coding/adaptation-controlled? | ⚫ UNKNOWN |
| HIGH-DATASET-Q003 | Which checksum/hash fields are required for safe comparison? | ⚫ UNKNOWN |
| HIGH-DATASET-Q004 | Which dataset areas must never be modified without recovery hardware/process? | ⚫ UNKNOWN |
