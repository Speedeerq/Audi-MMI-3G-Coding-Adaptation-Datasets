# MMI 3G High — Offline Research Layer

## Navigation

| Area | Link |
|---|---|
| Repository navigation | [../../NAVIGATION.md](../../NAVIGATION.md) |
| MMI 3G High index | [../MMI_3G_HIGH_INDEX.md](../MMI_3G_HIGH_INDEX.md) |
| Roadmap | [../../ROADMAP.md](../../ROADMAP.md) |
| Final progress report | [../../13_RELEASE/FINAL_PROGRESS_REPORT.md](../../13_RELEASE/FINAL_PROGRESS_REPORT.md) |

## Purpose

This folder contains work that can continue without current vehicle evidence.

It is used for:

- organizing unknowns,
- preparing research questions,
- defining evidence requirements,
- tracking risks,
- preparing release gates,
- preventing unsupported claims.

## Rule

Offline research does not confirm technical behavior.

Everything here remains `⚫ UNKNOWN`, `🔴 HYPOTHESIS` or `🟠 TO VERIFY` until evidence is attached.

## Files

| File | Purpose |
|---|---|
| [RESEARCH_BACKLOG.md](RESEARCH_BACKLOG.md) | Prioritized research backlog for MMI 3G High |
| [HYPOTHESIS_REGISTER.md](HYPOTHESIS_REGISTER.md) | Hypotheses that must not be used as facts |
| [EVIDENCE_QUEUE.md](EVIDENCE_QUEUE.md) | Evidence still required before confirmation |
| [MODULE_DEPENDENCY_MATRIX.md](MODULE_DEPENDENCY_MATRIX.md) | Dependency matrix between MMI 3G High and related vehicle modules |
| [CAR_MENU_DEPENDENCY_MATRIX.md](CAR_MENU_DEPENDENCY_MATRIX.md) | CAR menu dependency planning matrix |
| [AUDIO_MOST_DEPENDENCY_MATRIX.md](AUDIO_MOST_DEPENDENCY_MATRIX.md) | Audio/MOST dependency planning matrix |
| [SOURCE_REVIEW_PROTOCOL.md](SOURCE_REVIEW_PROTOCOL.md) | How to evaluate external/community sources |
| [SOURCE_REVIEW_QUEUE.md](SOURCE_REVIEW_QUEUE.md) | Queue for future source review |
| [RISK_REGISTER.md](RISK_REGISTER.md) | Risk register for MMI 3G High research areas |
| [RELEASE_GATE.md](RELEASE_GATE.md) | Conditions required before publishing confirmed findings |
| [TEST_CASE_LIBRARY.md](TEST_CASE_LIBRARY.md) | Evidence review case templates |
| [BLOCKED_ITEMS_REGISTER.md](BLOCKED_ITEMS_REGISTER.md) | Items blocked until evidence exists |

## Related research shells

| Area | Link |
|---|---|
| Light research overview | [../../11_LIGHT_CODING/LIGHT_CODING_RESEARCH_OVERVIEW.md](../../11_LIGHT_CODING/LIGHT_CODING_RESEARCH_OVERVIEW.md) |
| BCM/J519 matrix | [../../11_LIGHT_CODING/BCM1_J519_LIGHT_DEPENDENCY_MATRIX.md](../../11_LIGHT_CODING/BCM1_J519_LIGHT_DEPENDENCY_MATRIX.md) |
| MMI CAR light menu dependency | [../../11_LIGHT_CODING/MMI_CAR_LIGHT_MENU_DEPENDENCY.md](../../11_LIGHT_CODING/MMI_CAR_LIGHT_MENU_DEPENDENCY.md) |
| Light research protocol | [../../11_LIGHT_CODING/LIGHT_CODING_TEST_PROTOCOL.md](../../11_LIGHT_CODING/LIGHT_CODING_TEST_PROTOCOL.md) |
| Compatibility matrix | [../../12_COMPATIBILITY/MMI_3G_HIGH_COMPATIBILITY_MATRIX.md](../../12_COMPATIBILITY/MMI_3G_HIGH_COMPATIBILITY_MATRIX.md) |

## Allowed work here

| Work | Allowed? | Notes |
|---|---:|---|
| Create research questions | Yes | Must be status-tagged |
| Define missing evidence | Yes | No need for vehicle access |
| Define test templates | Yes | No change to vehicle |
| Create hypothesis entries | Yes | Must remain hypothesis |
| Review source quality | Yes | No copying unsupported values as facts |
| Build module dependency matrix | Yes | Dependency claims remain unconfirmed until evidence exists |
| Build CAR menu matrix | Yes | UI/module relationships remain provisional |
| Build Audio/MOST matrix | Yes | audio relationships remain provisional |
| Build blocked register | Yes | records evidence gates only |
| Confirm byte/bit/adaptation behavior | No | Requires test evidence |
| Publish login/dataset values | No | Requires strict evidence and safety review |

## Status policy

| Status | Allowed in offline research? | Meaning |
|---|---:|---|
| ⚫ UNKNOWN | Yes | No evidence yet |
| 🔴 HYPOTHESIS | Yes | Research idea only |
| 🟠 TO VERIFY | Yes | Plausible but not tested |
| 🟡 VARIANT | Limited | Only if source clearly defines a variant but lacks full confirmation |
| 🟢 CONFIRMED | No | Offline work alone cannot confirm |

## Next use

Use this layer to prepare the repository while waiting for:

- Auto-Scan,
- Red Menu photos,
- MMI version screen,
- controller ID,
- coding backup,
- adaptation map,
- DTC baseline.
