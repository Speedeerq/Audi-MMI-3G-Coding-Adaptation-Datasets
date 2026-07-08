# ROADMAP

## Project state

Current state: **v0.1.0 — Repository foundation**

This project is intentionally staged. Technical research files for MMI 3G High must not be populated until the repository safety model, evidence model and test protocol are established.

## Milestones

| Milestone | Area | Goal | Status |
|---|---|---|---|
| M0 | Repository foundation | Directory structure, safety rules, research method, status legend, test protocol | 🟢 DONE |
| M1 | MMI 3G High document shell | Create empty research files for MMI 3G High without unverified content | 🟠 PENDING |
| M2 | MMI 3G High evidence intake | Add first confirmed/variant/unknown entries from logs and screenshots | 🟠 PENDING |
| M3 | Long Coding matrix | Map every byte/bit as CONFIRMED/VARIANT/TO VERIFY/HYPOTHESIS/UNKNOWN | 🟠 PENDING |
| M4 | Adaptation matrix | Document channels, ranges, dependencies, Security Access requirements | 🟠 PENDING |
| M5 | Security Access register | Document verified login requirements and risk levels | 🟠 PENDING |
| M6 | Green/Red Menu research | Document observed hidden menu functions and safe/unsafe areas | 🟠 PENDING |
| M7 | Dataset register | Document dataset addresses/functions only from known sources and evidence | 🟠 PENDING |
| M8 | Light coding research | Build BCM/J519 light coding section and test matrix | 🟠 PENDING |
| M9 | Compatibility matrix | Connect findings to HW/SW/market/PR-code/equipment variants | 🟠 PENDING |
| M10 | Release package | Prepare public-safe release notes and reviewed dataset tables | 🟠 PENDING |
| M11 | MMI 3G Basic expansion | Start Basic-specific structure after High foundation stabilizes | ⚫ NOT STARTED |
| M12 | MMI 3G+ expansion | Start Plus-specific structure after High/Basic method stabilizes | ⚫ NOT STARTED |

## Phase 0 — Foundation

Status: 🟢 DONE

Deliverables:

- `README.md`
- `ROADMAP.md`
- `CHANGELOG.md`
- `00_PROJECT/PROJECT_BRIEF.md`
- `00_PROJECT/RESEARCH_METHOD.md`
- `00_PROJECT/STATUS_LEGEND.md`
- `00_PROJECT/TEST_PROTOCOL.md`
- `00_PROJECT/SAFETY_RULES.md`
- repository folder structure

## Phase 1 — MMI 3G High shell

Trigger command:

```text
ROZPOCZNIJ MMI 3G HIGH
```

Planned files:

| File | Purpose |
|---|---|
| `01_MMI_3G_HIGH/MMI_3G_HIGH_OVERVIEW.md` | System overview and boundaries |
| `01_MMI_3G_HIGH/MMI_3G_HIGH_LONG_CODING.md` | Byte/bit research table |
| `01_MMI_3G_HIGH/MMI_3G_HIGH_ADAPTATIONS.md` | Adaptation channel research |
| `01_MMI_3G_HIGH/MMI_3G_HIGH_SECURITY_ACCESS.md` | Login/Security Access register |
| `01_MMI_3G_HIGH/MMI_3G_HIGH_DATASETS.md` | Dataset documentation register |
| `01_MMI_3G_HIGH/MMI_3G_HIGH_GREEN_MENU.md` | Green Menu research |
| `01_MMI_3G_HIGH/MMI_3G_HIGH_RED_MENU.md` | Red Engineering Menu research |
| `01_MMI_3G_HIGH/MMI_3G_HIGH_AUDIO_SOURCES.md` | Audio source and MOST/audio dependencies |
| `01_MMI_3G_HIGH/MMI_3G_HIGH_CAR_MENU.md` | CAR menu function dependencies |
| `01_MMI_3G_HIGH/MMI_3G_HIGH_TEST_MATRIX.md` | Test matrix for High-specific experiments |

## Phase 2 — Evidence intake

Input sources accepted:

| Source type | Accepted as | Notes |
|---|---|---|
| Auto-Scan | Evidence | Must include date, vehicle, controller part number and SW |
| VCDS coding screenshot | Evidence | Must include original and modified state |
| Adaptation map | Evidence | Must include channel values and controller metadata |
| ODIS/VCP log | Evidence | Must identify tool and operation |
| Photo/video of MMI behavior | Supporting evidence | Must be linked to specific test ID |
| Community report without logs | Observation only | Usually `🟠 TO VERIFY` or lower |
| Memory-only claim | Not sufficient | Cannot become confirmed |

## Phase 3 — Long Coding research

Rules:

1. Every byte and bit must be represented.
2. Unknown bits must be marked `⚫ UNKNOWN`.
3. Suspected functions must be marked `🔴 HYPOTHESIS` or `🟠 TO VERIFY`.
4. No bit becomes `🟢 CONFIRMED` without evidence.
5. Rollback must be tested before public release.

## Phase 4 — Adaptation research

Rules:

1. Document default value, observed value and value range separately.
2. Document whether Security Access was required.
3. Record whether the adaptation is persistent after sleep cycle/ignition cycle.
4. Record DTC before and after.
5. Record dependencies across 5F/56/07/19/09/17/46/47/6C/10/55 where applicable.

## Phase 5 — Security Access research

Rules:

1. Do not guess login values.
2. Do not publish unverified login values as facts.
3. Every Security Access entry must define:
   - when it is required,
   - when it is not required,
   - controller metadata,
   - operation context,
   - risk level,
   - evidence.
4. Risky or destructive access paths must be documented as research-only.

## Phase 6 — Dataset research

Rules:

1. Do not generate binary dataset files without source.
2. Do not publish copyrighted/proprietary binaries.
3. Always require backup before dataset or parameterization work.
4. Track checksum/source/variant information.
5. Treat address/function mapping as variant-dependent unless confirmed.

## Phase 7 — Light coding research

Scope:

- BCM1 / J519,
- halogen,
- bi-xenon,
- LED DRL,
- rear LED,
- coming home,
- leaving home,
- DRL,
- turn signals,
- USA lighting,
- Scandinavian lighting,
- Leuchte/adaptation-style channels where applicable,
- pre-facelift/facelift dependencies,
- bulb error risk,
- rollback matrix.

## Release policy

A release may be tagged only when:

| Requirement | Required |
|---|---|
| No unmarked claims | Yes |
| Every CONFIRMED item has evidence | Yes |
| Every risky item has rollback notes | Yes |
| No unsupported binary data | Yes |
| No private VINs or personal data | Yes |
| Changelog updated | Yes |

## Open decisions

| ID | Decision | Status |
|---|---|---|
| DEC-001 | Final public license | ⚫ OPEN |
| DEC-002 | Evidence file naming convention for screenshots/videos | 🟠 PROPOSED |
| DEC-003 | Whether to publish raw Auto-Scans or sanitized extracts only | 🟠 PROPOSED |
| DEC-004 | CSV/JSON mirror for tables | 🟠 PROPOSED |
