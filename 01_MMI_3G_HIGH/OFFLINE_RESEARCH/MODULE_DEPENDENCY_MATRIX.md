# MMI 3G High — Module Dependency Matrix

## Purpose

This file maps suspected and required dependencies between Audi MMI 3G High and related vehicle control modules.

This is not a confirmed coding table.  
It is a dependency research matrix used to plan evidence capture and controlled tests.

## Core rule

A dependency listed here is not confirmed until linked evidence exists.

Allowed statuses:

| Status | Meaning |
|---|---|
| ⚫ UNKNOWN | Module dependency not verified |
| 🔴 HYPOTHESIS | Suspected dependency, no sufficient evidence |
| 🟠 TO VERIFY | Plausible dependency, evidence needed |
| 🟡 VARIANT | Depends on HW/SW/market/equipment |
| 🟢 CONFIRMED | Only allowed after controlled evidence |

At initial creation, all dependency rows are `🔴 HYPOTHESIS`, `🟠 TO VERIFY` or `⚫ UNKNOWN`.

---

## Primary MMI dependency map

| Address | Module | Relationship to MMI 3G High | Primary research areas | Risk | Evidence required | Status |
|---:|---|---|---|---|---|---|
| 5F | Information Electronics | Primary/possible infotainment diagnostic context depending on vehicle/tool exposure | Long Coding, adaptations, Red/Green Menu, CAR menu, audio sources | HIGH | Auto-Scan, controller ID, coding backup, DTC before/after | 🟠 TO VERIFY |
| 56 | Radio | Possible infotainment/radio diagnostic context on some MMI 3G High variants | Radio/audio, coding visibility, source behavior | MEDIUM/HIGH | Auto-Scan, controller ID, DTC, audio evidence | 🟠 TO VERIFY |
| 07 | Control Head | Front panel/control interface dependency | Button behavior, MMI control availability, UI interaction | MEDIUM | Auto-Scan, controller ID, UI observation | 🟠 TO VERIFY |
| 19 | CAN Gateway | Network/module presence dependency | Installation list, CAR menu visibility, module communication | HIGH | Gateway installation list, DTC, module presence | 🟠 TO VERIFY |
| 09 | Central Electrics / BCM1 / J519 | Body/light dependency | Lights menu, DRL, CH/LH, exterior light behavior | HIGH | BCM coding/adaptations, DTC, light behavior evidence | 🟠 TO VERIFY |
| 46 | Central Convenience / BCM2 / J393 | Comfort/body dependency | Comfort menus, locking, vehicle settings | HIGH | Auto-Scan, coding/adaptation backup, UI evidence | 🟠 TO VERIFY |
| 17 | Instrument Cluster | Driver display / vehicle data dependency | Language/display, service/menu data, cluster interaction | MEDIUM | Auto-Scan, cluster ID, UI evidence | 🟠 TO VERIFY |
| 47 | Sound System | External amplifier / audio dependency | B&O/Bose/basic audio, MOST/audio routing, source output | HIGH | MOST/audio baseline, DTC, source behavior evidence | 🟠 TO VERIFY |
| 6C | Rear View Camera | Camera display dependency | RVC image, reverse screen, camera menu | HIGH | Gateway presence, camera DTC, reverse UI evidence | 🟠 TO VERIFY |
| 10 | Park Assist | OPS/APS visualization dependency | Parking display, sensors, reverse interaction | HIGH | Gateway presence, park assist DTC, UI evidence | 🟠 TO VERIFY |
| 55 | Headlight Range | Xenon/AFS/light dependency | Light menu, AFS, leveling, lamp-related DTC | HIGH | Headlight range scan, BCM evidence, light behavior evidence | 🟠 TO VERIFY |

---

## Dependency matrix by MMI function area

| MMI function area | Possible related modules | What must be separated | Evidence required | Risk | Status |
|---|---|---|---|---|---|
| System identity | 5F, 56, 07 | Diagnostic address vs physical unit identity | Auto-Scan, Red Menu, unit label | MEDIUM | 🟠 TO VERIFY |
| Long Coding | 5F, 56, 07, 19 | Coding availability vs effect | Original coding, changed coding, DTC before/after, rollback | HIGH | ⚫ UNKNOWN |
| Adaptations | 5F, 56, 07 | Channel visibility vs channel effect | Adaptation map, changed value, DTC before/after, rollback | HIGH | ⚫ UNKNOWN |
| Red Engineering Menu | 5F/MMI unit | Read-only identity vs engineering action | Photos/transcription, no writes | MEDIUM/HIGH | 🟠 TO VERIFY |
| Green Menu | 5F/MMI unit, 19, 47, 6C, 10, 09 | Menu visibility vs actual vehicle behavior | Read-only tree first, then controlled test | HIGH | ⚫ UNKNOWN |
| CAR menu visibility | 5F, 19, 09, 46, 17, 6C, 10, 55 | Menu visible vs module installed/functioning | UI screenshots, Gateway list, module DTC | HIGH | 🟠 TO VERIFY |
| Audio source visibility | 5F, 56, 47, 19 | Source visible vs functional audio output | Source screenshots, audio output test, MOST/DTC | HIGH | 🟠 TO VERIFY |
| Camera display | 5F, 6C, 10, 19 | Camera image vs OPS overlay vs menu coding | Gateway list, RVC DTC, reverse UI photo/video | HIGH | 🟠 TO VERIFY |
| Parking visualization | 5F, 10, 6C, 19 | OPS availability vs sensor functionality | Park assist DTC, UI observation, Gateway list | HIGH | 🟠 TO VERIFY |
| Lighting settings | 5F, 09, 55, 19 | Menu option vs legal/safety vehicle behavior | BCM/light evidence, DTC, rollback | HIGH | 🟠 TO VERIFY |
| Comfort settings | 5F, 46, 09, 19 | UI setting vs actual comfort function | Comfort module evidence, UI observation, DTC | HIGH | 🟠 TO VERIFY |
| Cluster interaction | 5F, 17, 19 | MMI language/display vs cluster behavior | Cluster scan, UI evidence, before/after | MEDIUM | 🟠 TO VERIFY |
| Dataset/parameterization | 5F/MMI unit, related modules | Metadata vs binary/write operation | Source, checksum, backup, recovery path | CRITICAL | 🔴 BLOCKED |
| Security Access | 5F, 56, 07, possibly related modules | Operation-specific requirement vs copied login value | Tested operation, accepted/rejected state, risk review | HIGH/CRITICAL | 🔴 BLOCKED |

---

## CAR menu dependency breakdown

| CAR menu category | Suspected modules | Evidence needed | Failure mode if wrong | Status |
|---|---|---|---|---|
| Vehicle settings root menu | 5F, 19 | UI photos, Gateway list | Menu absent or incomplete | 🟠 TO VERIFY |
| Exterior lighting settings | 5F, 09, 55, 19 | BCM/light coding evidence, DTC, UI behavior | Wrong light behavior, bulb errors, legal/safety issue | 🟠 TO VERIFY |
| Coming Home / Leaving Home | 5F, 09, 46, 19 | UI evidence, BCM/comfort context, DTC | Setting visible but no physical effect | 🟠 TO VERIFY |
| Parking aid display | 5F, 10, 6C, 19 | Gateway list, park assist DTC, reverse screen evidence | No OPS/RVC, false menu availability | 🟠 TO VERIFY |
| Camera display | 5F, 6C, 19 | RVC module evidence, reverse behavior photo/video | Black screen/no signal/wrong trigger | 🟠 TO VERIFY |
| Central locking / comfort | 5F, 46, 09, 19 | Comfort module scan, UI behavior, DTC | Menu visible but feature inactive | 🟠 TO VERIFY |
| Service / vehicle info | 5F, 17, 19 | Cluster/Gateway evidence, UI photos | Missing/incorrect vehicle data | 🟠 TO VERIFY |

---

## Audio / MOST dependency breakdown

| Audio area | Suspected modules | Evidence needed | Failure mode if wrong | Status |
|---|---|---|---|---|
| Radio source | 5F, 56, 47, 19 | Source UI, radio module evidence, DTC | Source visible but silent or unavailable | 🟠 TO VERIFY |
| Media / SD / HDD | 5F/MMI unit, 47 | Source UI, audio output, DTC | Source opens but no audio/output error | 🟠 TO VERIFY |
| AUX / AMI | 5F/MMI unit, 47 | UI state, hardware presence, source function | Source missing or no signal | 🟠 TO VERIFY |
| Bluetooth audio | 5F/MMI unit, 47, phone module if present | UI state, pairing/audio test, DTC | Visible pairing but no audio route | 🟠 TO VERIFY |
| Navigation voice | 5F/MMI unit, 47 | Route guidance audio test, volume/source behavior | No nav voice or wrong channel | 🟠 TO VERIFY |
| B&O / Bose / external amp | 47, 5F, 19 | Amplifier scan, MOST DTC, output behavior | No sound, MOST ring faults, amplifier DTC | 🟠 TO VERIFY |
| MOST ring health | 5F, 47, 56, other MOST devices | DTC, optical ring diagnosis if available | Communication faults/no sound | 🟠 TO VERIFY |

---

## Light / BCM dependency breakdown

| Light-related area | Suspected modules | Evidence needed | Risk | Status |
|---|---|---|---|---|
| DRL menu visibility | 5F, 09, 19 | UI evidence, BCM coding/adaptation, DTC | HIGH | 🟠 TO VERIFY |
| CH/LH menu visibility | 5F, 09, 46, 19 | UI evidence, BCM/comfort context, DTC | HIGH | 🟠 TO VERIFY |
| Xenon/AFS behavior | 5F, 09, 55, 19 | Headlight range scan, BCM scan, DTC | HIGH | 🟠 TO VERIFY |
| Bulb error behavior | 09, 17, 5F | BCM/cluster/MMI evidence, DTC | HIGH | 🟠 TO VERIFY |
| USA/EU light behavior | 09, 55, 17, 5F, 19 | Market context, BCM coding, legal/safety note | HIGH/CRITICAL | 🔴 BLOCKED |

---

## Evidence package required before changing anything

| Evidence | Required before | Target file |
|---|---|---|
| Full Auto-Scan | Any confirmed dependency claim | `AUTOSCAN_HNAV_TEMPLATE.md` |
| Controller identification | Unit/module relationship claims | `controller_identification.template.md` |
| Gateway installation list | CAR/camera/parking/audio dependency claims | `gateway_installation_list.template.md` |
| DTC before | Any test or fault attribution | `dtc_before.template.md` |
| Original coding | Long Coding tests | `CODING_BACKUP.md` |
| Adaptation map | Adaptation tests | `ADAPTATION_MAP.md` |
| MOST/audio state | Audio/MOST tests | `most_audio_status.template.md` |
| UI screenshots/video | Menu visibility/function claims | `ui_observation_log.template.md` |
| Red Menu photos | SW/version identity | `red_menu_transcription_worksheet.md` |

---

## Test design pattern

Every dependency test must answer:

| Question | Required answer |
|---|---|
| Which module is suspected to influence the MMI function? | Address + module name |
| What is the exact MMI function observed? | Menu path/source/screen |
| What is visible before change? | Photo/video/screenshot |
| What value/state changes? | One variable only |
| What is the expected result? | Written before test |
| What actually happened? | Evidence attached |
| Did any DTC appear? | DTC before/after |
| Was rollback successful? | Required |
| Is this global or variant-specific? | Must be stated |

---

## Current decision

This matrix may be used to plan evidence capture and tests.

It cannot be used as coding, adaptation, retrofit or dataset instruction.
