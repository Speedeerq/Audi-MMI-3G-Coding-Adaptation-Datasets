# MMI 3G High — Offline Research Layer

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
| `RESEARCH_BACKLOG.md` | Prioritized research backlog for MMI 3G High |
| `HYPOTHESIS_REGISTER.md` | Hypotheses that must not be used as facts |
| `EVIDENCE_QUEUE.md` | Evidence still required before confirmation |
| `MODULE_DEPENDENCY_MATRIX.md` | Dependency matrix between MMI 3G High and related vehicle modules |
| `CAR_MENU_DEPENDENCY_MATRIX.md` | CAR menu dependency planning matrix |
| `AUDIO_MOST_DEPENDENCY_MATRIX.md` | Audio/MOST dependency planning matrix |
| `SOURCE_REVIEW_PROTOCOL.md` | How to evaluate external/community sources |
| `SOURCE_REVIEW_QUEUE.md` | Queue for future source review |
| `RISK_REGISTER.md` | Risk register for MMI 3G High research areas |
| `RELEASE_GATE.md` | Conditions required before publishing confirmed findings |
| `TEST_CASE_LIBRARY.md` | Evidence review case templates |
| `BLOCKED_ITEMS_REGISTER.md` | Items blocked until evidence exists |

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
