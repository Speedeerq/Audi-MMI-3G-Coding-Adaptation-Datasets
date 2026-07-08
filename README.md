# Audi MMI 3G Coding / Adaptation / Dataset Research

> Research repository for documenting Audi MMI 3G High coding, adaptations, Security Access, datasets, hidden functions, test evidence, and cross-module dependencies.

## Project purpose

This repository is designed as an evidence-based research dataset for Audi MMI 3G systems.

Primary focus:

1. Audi MMI 3G High
2. Audi MMI 3G Basic
3. Audi MMI 3G+
4. Related VAG/Audi modules connected to infotainment, lighting, gateway, audio, camera, cluster, and vehicle configuration.

The goal is not to publish a quick coding guide.  
The goal is to document **what is known, what is unknown, what is variant-dependent, and how each finding can be verified safely**.

## Scope

The repository will document:

| Area | Description | Status policy |
|---|---|---|
| Long Coding | Byte/bit mapping, labels, observed effects, dependencies, rollback paths | Every byte/bit must have a status |
| Adaptations | Channels, values, defaults, observed effects, Security Access requirements | Every channel must have evidence |
| Security Access | Login requirements, verified use cases, risk classification | No guessing allowed |
| Datasets | Address/function/value mapping, source, checksum notes, backup requirements | No binary datasets without source |
| Green Menu / Red Menu | Hidden engineering menus, observed functions, dependencies | Unknown options must be marked |
| Light Coding | BCM/J519, DRL, CH/LH, USA/EU/Scandinavian lights, front/rear lamps | High-risk changes require test matrix |
| Compatibility | HW/SW version, market, PR-code and equipment dependencies | Variant matrix required |
| Test Logs | Controlled experiments and rollback verification | Required for confirmation |

## Supported systems

Initial target:

| System | Priority | Repository status |
|---|---:|---|
| MMI 3G High | P0 | Foundation prepared |
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

Full definition: [`00_PROJECT/STATUS_LEGEND.md`](00_PROJECT/STATUS_LEGEND.md)

## Safety warning

Coding, adaptation and dataset changes may affect:

- infotainment boot behavior,
- MOST bus configuration,
- gateway installation list,
- audio routing,
- camera behavior,
- lighting behavior,
- battery drain,
- diagnostic communication,
- DTC generation,
- component protection-related behavior,
- immobilizer-adjacent vehicle configuration areas,
- legal compliance of exterior lighting.

This repository must not be used as a blind-click coding list.

Before any test, create:

1. full Auto-Scan,
2. original long coding backup,
3. adaptation channel backup where applicable,
4. dataset/parameterization backup where applicable,
5. controller part number record,
6. software version record,
7. DTC report before modification,
8. rollback plan.

Detailed rules: [`00_PROJECT/SAFETY_RULES.md`](00_PROJECT/SAFETY_RULES.md)

## Required tools

Tooling depends on the test type. The repository should record the tool used for every finding.

Typical tools:

| Tool class | Examples | Purpose |
|---|---|---|
| Diagnostic scan | VCDS, ODIS, VCP, OBDeleven | Auto-Scan, coding, adaptations, DTC |
| Engineering access | ODIS Engineering, VCP where applicable | Parameterization/dataset research |
| Evidence capture | screenshots, photos, exported logs | Reproducibility |
| Version tracking | Git, Markdown, CSV, JSON | Traceability |
| Power support | stable battery charger/power supply | Safe diagnostic session |

No tool output should be trusted without recording controller part number, software version, market and vehicle context.

## Repository layout

```text
Audi-MMI-3G-Coding-Adaptation-Datasets/
├── 00_PROJECT/
│   ├── PROJECT_BRIEF.md
│   ├── RESEARCH_METHOD.md
│   ├── STATUS_LEGEND.md
│   ├── TEST_PROTOCOL.md
│   └── SAFETY_RULES.md
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
├── README.md
├── CHANGELOG.md
└── ROADMAP.md
```

## Documentation rules

### Long Coding entry format

```markdown
## Byte XX / Bit Y — <Label or UNKNOWN>

| Field | Value |
|---|---|
| Byte |  |
| Bit |  |
| Label |  |
| Known behavior |  |
| Observed effect |  |
| Dependencies |  |
| Risk |  |
| Rollback |  |
| Status | ⚫ UNKNOWN |
| Tested on |  |
| Controller part number |  |
| Software version |  |
| Market |  |
| Vehicle |  |
| Evidence |  |
| Notes |  |
```

Unknown bits must not be skipped.  
They must be documented as `⚫ UNKNOWN` with a controlled test plan.

### Adaptation entry format

```markdown
## Channel <ID> — <Name or UNKNOWN>

| Field | Value |
|---|---|
| Channel |  |
| Name |  |
| Value range |  |
| Default value |  |
| Observed value |  |
| Effect |  |
| Dependencies |  |
| Security Access |  |
| Risk |  |
| Rollback |  |
| Status | ⚫ UNKNOWN |
| Evidence |  |
```

### Dataset entry format

```markdown
## Dataset entry — <Function or UNKNOWN>

| Field | Value |
|---|---|
| Address |  |
| Function |  |
| System |  |
| Possible values |  |
| Checksum |  |
| Source |  |
| Risk |  |
| Backup required | Yes |
| Status | ⚫ UNKNOWN |
```

## How to document tests

Every test must be written as a traceable experiment:

```markdown
## Test ID: T-YYYYMMDD-MODULE-AREA-001

| Field | Value |
|---|---|
| Test ID |  |
| Date |  |
| Vehicle |  |
| VIN partial |  |
| Controller |  |
| Part number |  |
| SW version |  |
| Original coding |  |
| Modified coding |  |
| Changed byte/bit |  |
| Expected result |  |
| Observed result |  |
| DTC before |  |
| DTC after |  |
| Rollback successful |  |
| Status |  |
| Notes |  |
```

Full protocol: [`00_PROJECT/TEST_PROTOCOL.md`](00_PROJECT/TEST_PROTOCOL.md)

## How to submit new observations

A new observation should include:

| Required item | Description |
|---|---|
| System | MMI 3G High / Basic / Plus |
| Vehicle | Model, year, market |
| Controller | Address and controller name |
| Part number | Hardware/software identification |
| SW version | Software train/version |
| Original value | Coding/adaptation/dataset before change |
| Modified value | Coding/adaptation/dataset after change |
| Effect | What changed in vehicle/MMI behavior |
| DTC before/after | Full diagnostic context |
| Evidence | Logs, screenshots, photos |
| Rollback result | Whether original behavior returned |

Submissions without evidence stay `🟠 TO VERIFY`, `🔴 HYPOTHESIS`, or `⚫ UNKNOWN`.

## Current repository phase

Current phase: **Foundation / Repository Architecture**

No MMI 3G High byte/bit/login/dataset content is included yet.

The MMI 3G High research files will be created only after the command:

```text
ROZPOCZNIJ MMI 3G HIGH
```
