# PROJECT BRIEF

## Project name

**Audi MMI 3G Coding / Adaptation / Dataset Research**

Repository name:

```text
Audi-MMI-3G-Coding-Adaptation-Datasets
```

## Research objective

Build a structured, evidence-based repository documenting configuration behavior of Audi MMI 3G systems and related control modules.

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
- rollback and evidence.

## Non-goals

This repository is not:

| Non-goal | Reason |
|---|---|
| A blind coding guide | Unknown or variant-dependent settings can cause faults |
| A login/code dump | Security Access must be contextual and verified |
| A binary dataset repository | Source, legality and checksum must be controlled |
| A retrofit promise list | Equipment, market and software variants matter |
| A shortcut around diagnostics | Every change needs pre/post evidence |

## Primary research target

| System | Priority | Notes |
|---|---:|---|
| Audi MMI 3G High | P0 | First active research target |
| Audi MMI 3G Basic | P2 | Later phase |
| Audi MMI 3G+ | P3 | Later phase |

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
| Evidence first | A claim without evidence is not confirmed |
| Variant awareness | HW/SW/market/equipment may change behavior |
| Safety before testing | Backup and rollback are mandatory |
| Unknowns are documented | Unknown bits/channels are not ignored |
| No false certainty | Status must reflect evidence quality |
| Reproducibility | Tests must be repeatable by another researcher |
| Traceability | Every result links to test ID or source |

## Information status requirement

Every item must be marked as:

| Status | Meaning |
|---|---|
| 🟢 CONFIRMED | Confirmed by evidence |
| 🟡 VARIANT | Confirmed only for specific variants |
| 🟠 TO VERIFY | Likely but not sufficiently verified |
| 🔴 HYPOTHESIS | Research hypothesis |
| ⚫ UNKNOWN | Function unknown |

## Evidence requirements

Minimum evidence for a `🟢 CONFIRMED` coding/adaptation finding:

1. controller address,
2. controller part number,
3. software version,
4. vehicle model/year/market,
5. original value,
6. modified value,
7. observed effect,
8. DTC before/after,
9. rollback result,
10. linked test log or source.

## Project operating mode

Current stage:

```text
Foundation / Repository Architecture
```

Next stage starts only after command:

```text
ROZPOCZNIJ MMI 3G HIGH
```

Expected next output:

- create MMI 3G High research file shell,
- add templates,
- keep technical content empty or explicitly unknown unless evidence exists,
- do not invent bytes, bits, logins or dataset addresses.
