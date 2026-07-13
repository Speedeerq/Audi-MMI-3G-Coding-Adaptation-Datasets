# E3 — Evidence Collection Campaigns

## Purpose

This file groups required E3 evidence into practical diagnostic campaigns to be performed at the vehicle.

It does not solve tasks.  
It does not mark anything as `VERIFIED`.  
It does not assume that data is already available.  
It does not change chapters, MASTER files, triage status or task closure state.

## Scope

Campaigns are designed to collect field evidence for later verification work.

| Campaign ID | Campaign | Primary focus |
|---|---|---|
| C-001 | Gateway / CAN / Installation List | network baseline and module presence |
| C-002 | BCM1 / J519 | central electrics and body/light context |
| C-003 | BCM2 / J393 / Access Authorization | comfort, access and authorization context |
| C-004 | MMI 3G High / 5F | infotainment baseline and HNAV context |
| C-005 | Audio / MOST / B&O | audio topology and MOST context |
| C-006 | Komfort / drzwi / lusterka | doors, mirrors and comfort UI/behavior context |
| C-007 | Oświetlenie / lampy / BCM coding | lighting equipment and menu/context evidence |

## Global campaign rules

| Rule | Requirement |
|---|---|
| Evidence only | Campaigns collect evidence; they do not resolve issues. |
| No verification | Do not mark content as `VERIFIED` from this file alone. |
| No task closure | Do not close P1 tasks from campaign planning alone. |
| No assumptions | If evidence is missing, mark it as `TO CAPTURE` or `WAITING_FOR_EVIDENCE`. |
| No coding changes | Do not change coding/adaptations during evidence collection. |
| No Security Access experiments | Do not enter or test logins during evidence collection. |
| No dataset operations | Do not upload, export, modify or write datasets in this campaign phase. |
| Privacy | Sanitize VIN, plates, owner data, location data and personal paths before publishing. |

## Common tools

| Tool class | Examples | Use |
|---|---|---|
| Diagnostic scan | VCDS, ODIS, VCP | Auto-Scan, controller ID, DTC, coding/adaptation export where safe/read-only |
| Evidence capture | phone camera, screenshots, screen recordings | MMI screens, physical labels, UI states |
| Power support | battery charger / stable supply | reduce diagnostic-session risk |
| Storage | laptop folders, timestamped evidence package | keep raw and sanitized evidence separated |
| Notes | Markdown worksheet | record context, weather, ignition state, tool version and anomalies |

## Global file naming convention

```text
09_TEST_LOGS/YYYY/YYYY-MM-DD/E3-CAMPAIGN-ID/
├── autoscan_before.txt
├── controller_identification.md
├── dtc_before.md
├── gateway_installation_list.md
├── adaptation_map_<module>.csv
├── control_module_map_<module>.txt
├── ui_observation_log.md
├── photo_index.md
└── media/
    ├── 001_<area>_<screen>.jpg
    ├── 002_<area>_<screen>.jpg
    └── 003_<area>_<screen>.mp4
```

---

# C-001 — Gateway / CAN / Installation List

## Cel

Zebrać bazowy obraz sieci pojazdu: obecność modułów, listę instalacyjną Gateway, błędy komunikacyjne, zależności CAN/MOST oraz kontekst dla późniejszej weryfikacji zależności MMI, komfortu, audio, kamery, parkowania i świateł.

## Moduły objęte kampanią

| Address | Module | Purpose |
|---:|---|---|
| 19 | CAN Gateway | installation list, network DTC, module reachability |
| 5F / 56 / 07 | Infotainment-related modules | dependency context only |
| 09 | Central Electrics / BCM1 / J519 | body/light dependency context |
| 46 | Central Convenience / BCM2 / J393 | comfort/access dependency context |
| 47 | Sound System | audio/MOST dependency context |
| 6C | Rear View Camera | camera dependency context |
| 10 | Park Assist | OPS/parking dependency context |
| 55 | Headlight Range | lighting/AFS dependency context |
| 17 | Instrument Cluster | warnings/menu/display context |

## Wymagane narzędzia

| Tool | Required | Notes |
|---|---:|---|
| VCDS / ODIS / VCP | Yes | read-only scan and module identification |
| Stable power support | Recommended | especially for long diagnostic sessions |
| Laptop storage folder | Yes | save raw and sanitized versions |
| Camera/phone | Recommended | document tool screens if exports fail |

## Pliki do wygenerowania

| File | Status |
|---|---|
| `autoscan_before.txt` | TO CAPTURE |
| `gateway_installation_list.md` | TO CAPTURE |
| `controller_identification.md` | TO CAPTURE |
| `dtc_before.md` | TO CAPTURE |
| `network_dependency_notes.md` | TO CAPTURE |
| `photo_index.md` | TO CAPTURE |

`gateway_installation_list.md` is a separate sanitized evidence attachment indexed by `evidence_pack`. A `module_dependency` record does not replace the Installation List.

## Zdjęcia do wykonania

| Photo | Required | Notes |
|---|---:|---|
| Tool screen showing Gateway identification | Yes | sanitize VIN if visible |
| Gateway installation list screen | Yes | useful as backup if export unavailable |
| DTC summary screen | Recommended | raw log still preferred |
| Any unreachable module warning | Recommended | do not interpret yet |

## Logi do zapisania

| Log | Required | Notes |
|---|---:|---|
| Full Auto-Scan | Yes | before any further campaign work |
| Gateway DTC block | Yes | record before-state only |
| Installation list export/screenshot | Yes | do not change list |
| Module reachability notes | Recommended | mark as observation only |

## Dane z Auto-Scan

| Data | Required | Status |
|---|---:|---|
| Gateway part number | Yes | TO CAPTURE |
| Gateway SW/component | Yes | TO CAPTURE |
| Installation list | Yes | TO CAPTURE |
| All DTCs from 19 | Yes | TO CAPTURE |
| Communication DTCs across all modules | Yes | TO CAPTURE |
| Installed/not reachable modules | Yes | TO CAPTURE |

## Control Module Maps

| Module | Required | Purpose |
|---|---:|---|
| 19 Gateway | Yes if tool supports | network baseline |
| 5F/56/07 | Recommended | infotainment dependency context |
| 09/46/47/6C/10/55/17 | Recommended | cross-module dependency planning |

## Adaptation Maps

| Module | Required | Notes |
|---|---:|---|
| 19 Gateway | Recommended if available | read-only export only |
| Related modules | Optional | only if tool supports safe read-only export |

## Zadania P1, które kampania może pomóc zamknąć

| P1 task group | How campaign helps | Closure status |
|---|---|---|
| Missing module presence evidence | provides installation list and reachability data | NOT CLOSED |
| Gateway dependency claims | provides baseline for later review | NOT CLOSED |
| CAN communication fault context | provides before-state DTC evidence | NOT CLOSED |
| Cross-module dependency uncertainty | provides module map for later triage | NOT CLOSED |

## Kolejność wykonania

1. Connect stable power support if available.
2. Record date, vehicle context, tool version and interface.
3. Run full Auto-Scan.
4. Save raw scan as `autoscan_before.txt`.
5. Extract Gateway identification.
6. Export or photograph Gateway installation list.
7. Save DTC-before summary.
8. Do not change any installation list entry.
9. Sanitize copy before publication.

## Ryzyka

| Risk | Level | Control |
|---|---|---|
| Accidental Gateway configuration change | HIGH | read-only only |
| Misinterpreting unreachable module as missing equipment | HIGH | keep as `TO VERIFY` |
| Publishing VIN/private data | MEDIUM | sanitize before commit |
| Weak battery during scan | MEDIUM | use power support |

## Czego nie klikać

- Do not open coding helper for changes.
- Do not change installation list checkboxes.
- Do not clear DTCs before saving baseline.
- Do not run output tests.
- Do not perform Security Access.
- Do not run guided functions that modify configuration.

## Warunki bezpieczeństwa

- Ignition state documented.
- Battery voltage stable.
- No write operations.
- Raw logs preserved.
- Sanitized version prepared separately.

## Oczekiwany rezultat

A complete network baseline package that can support later verification of module presence and dependency claims without resolving or closing any P1 tasks yet.

---

# C-002 — BCM1 / J519

## Cel

Zebrać dowody identyfikacyjne i kontekstowe dla modułu 09 Central Electrics / BCM1 / J519 w zakresie menu MMI, świateł, błędów elektrycznych i zależności z Gateway, licznikiem, BCM2 oraz 55 Headlight Range.

## Moduły objęte kampanią

| Address | Module | Purpose |
|---:|---|---|
| 09 | Central Electrics / BCM1 / J519 | primary module |
| 19 | CAN Gateway | installation and communication context |
| 17 | Instrument Cluster | warning/display context |
| 55 | Headlight Range | xenon/AFS context if present |
| 46 | Central Convenience / BCM2 | CH/LH and comfort dependency context |
| 5F | MMI 3G High | CAR menu visibility context |

## Wymagane narzędzia

| Tool | Required | Notes |
|---|---:|---|
| VCDS / ODIS / VCP | Yes | controller ID, DTC, read-only maps |
| Camera/phone | Yes | light menu and physical equipment photos |
| Stable power support | Recommended | diagnostic safety |

## Pliki do wygenerowania

| File | Status |
|---|---|
| `controller_09_identification.md` | TO CAPTURE |
| `dtc_09_before.md` | TO CAPTURE |
| `control_module_map_09.txt` | TO CAPTURE if available |
| `adaptation_map_09.csv` | TO CAPTURE if available |
| `mmi_light_menu_observation.md` | TO CAPTURE |
| `physical_lighting_photo_index.md` | TO CAPTURE |

## Zdjęcia do wykonania

| Photo | Required | Notes |
|---|---:|---|
| 09 controller ID screen | Yes | if export unavailable |
| MMI CAR light menu screens | Yes | read-only observation |
| Front lamp type / DRL visible equipment | Recommended | no disassembly required |
| Rear lamp equipment | Recommended | exterior evidence only |
| Any warning on cluster/MMI | Recommended | do not clear before logging |

## Logi do zapisania

| Log | Required | Notes |
|---|---:|---|
| 09 DTC before | Yes | before any other action |
| 09 controller ID | Yes | part number/component/SW |
| 09 control module map | Recommended | read-only export |
| 09 adaptation map | Recommended | read-only export |
| related 17/19/55/46 DTC context | Recommended | only for dependency review |

## Dane z Auto-Scan

| Data | Required | Status |
|---|---:|---|
| Address 09 part number | Yes | TO CAPTURE |
| Component / SW version | Yes | TO CAPTURE |
| Coding string presence | Yes | TO CAPTURE |
| DTCs from 09 | Yes | TO CAPTURE |
| Related 17/19/46/55 DTCs | Recommended | TO CAPTURE |

## Control Module Maps

| Module | Required | Purpose |
|---|---:|---|
| 09 | Recommended | body/light baseline |
| 55 | Optional if present | headlight range context |
| 46 | Optional | comfort/CH/LH context |

## Adaptation Maps

| Module | Required | Purpose |
|---|---:|---|
| 09 | Recommended | future adaptation review only |
| 46 | Optional | comfort relationship context |
| 55 | Optional | light range context |

## Zadania P1, które kampania może pomóc zamknąć

| P1 task group | How campaign helps | Closure status |
|---|---|---|
| BCM1/J519 identification gaps | captures part number/SW/component | NOT CLOSED |
| Light menu evidence gaps | captures MMI UI and module context | NOT CLOSED |
| Bulb/warning context gaps | captures DTC-before and cluster/MMI observations | NOT CLOSED |
| CH/LH dependency uncertainty | captures 09/46/5F context for later review | NOT CLOSED |

## Kolejność wykonania

1. Confirm C-001 or at least full Auto-Scan exists.
2. Save 09 controller identification.
3. Save 09 DTC-before.
4. Export 09 control module map if supported.
5. Export 09 adaptation map if supported.
6. Photograph MMI light menu screens.
7. Photograph visible lamp equipment.
8. Do not change coding/adaptations.

## Ryzyka

| Risk | Level | Control |
|---|---|---|
| Lighting safety/legal interpretation | HIGH | evidence only, no conclusions |
| Mistaking menu visibility for function | HIGH | mark as observation only |
| Missing related module context | MEDIUM | link 19/17/46/55 evidence later |

## Czego nie klikać

- Do not change 09 coding.
- Do not change adaptations.
- Do not perform output tests.
- Do not clear DTCs before baseline is saved.
- Do not use Security Access.
- Do not test lighting behavior on public road as part of evidence capture.

## Warunki bezpieczeństwa

- Stationary vehicle.
- Ignition state recorded.
- No exterior lighting changes.
- No coding/adaptation writes.
- DTC-before preserved.

## Oczekiwany rezultat

A BCM1/J519 evidence package for later verification of MMI CAR light menu, lighting equipment and central electrics dependency claims.

---

# C-003 — BCM2 / J393 / Access Authorization

## Cel

Zebrać dowody dla modułów komfortu, central convenience, access authorization, keyless/central locking context and their relationship to MMI CAR comfort menus and door/mirror behavior.

## Moduły objęte kampanią

| Address | Module | Purpose |
|---:|---|---|
| 46 | Central Convenience / BCM2 / J393 | comfort and locking baseline |
| 05 | Access/Start Authorization if present | access authorization context |
| 09 | Central Electrics / BCM1 | body dependency context |
| 19 | CAN Gateway | installation list and communication context |
| 5F | MMI 3G High | CAR comfort menu context |
| 42/52/62/72 | Door modules if present | door and mirror context |

## Wymagane narzędzia

| Tool | Required | Notes |
|---|---:|---|
| VCDS / ODIS / VCP | Yes | module ID, DTC, maps if available |
| Camera/phone | Yes | MMI comfort menu and physical behavior evidence |
| Key set | Recommended | document key/access context without adaptation |

## Pliki do wygenerowania

| File | Status |
|---|---|
| `controller_46_identification.md` | TO CAPTURE |
| `controller_05_identification.md` | TO CAPTURE if present |
| `dtc_46_05_before.md` | TO CAPTURE |
| `control_module_map_46.txt` | TO CAPTURE if available |
| `adaptation_map_46.csv` | TO CAPTURE if available |
| `comfort_access_observation_log.md` | TO CAPTURE |
| `mmi_comfort_menu_photos.md` | TO CAPTURE |

## Zdjęcia do wykonania

| Photo | Required | Notes |
|---|---:|---|
| MMI central locking/comfort menu | Yes | read-only |
| Cluster warning if present | Recommended | no clearing before logs |
| Physical mirror/door switch panel | Optional | equipment context only |
| Diagnostic ID screens for 46/05 | Recommended | backup evidence |

## Logi do zapisania

| Log | Required | Notes |
|---|---:|---|
| 46 DTC before | Yes | comfort baseline |
| 05 DTC before if present | Recommended | access authorization context |
| 42/52 door DTCs if present | Recommended | door/mirror context |
| Gateway list | Recommended | module presence context |

## Dane z Auto-Scan

| Data | Required | Status |
|---|---:|---|
| 46 part number/component/SW | Yes | TO CAPTURE |
| 05 part number/component/SW if present | Recommended | TO CAPTURE |
| Door module presence | Recommended | TO CAPTURE |
| DTCs from 46/05/door modules | Yes if modules present | TO CAPTURE |

## Control Module Maps

| Module | Required | Purpose |
|---|---:|---|
| 46 | Recommended | comfort baseline |
| 05 | Optional if present | access authorization context |
| 42/52/62/72 | Optional if present | door/mirror context |

## Adaptation Maps

| Module | Required | Purpose |
|---|---:|---|
| 46 | Recommended | future comfort review |
| 05 | Optional if present | access review only |
| door modules | Optional | mirror/door context |

## Zadania P1, które kampania może pomóc zamknąć

| P1 task group | How campaign helps | Closure status |
|---|---|---|
| BCM2/J393 evidence gaps | captures identity and DTC context | NOT CLOSED |
| Access authorization uncertainty | captures module presence/context | NOT CLOSED |
| Comfort menu dependency gaps | links MMI menu evidence with 46/05 context | NOT CLOSED |
| Door/mirror dependency gaps | captures door module presence and context | NOT CLOSED |

## Kolejność wykonania

1. Confirm full Auto-Scan or Gateway context is saved.
2. Capture 46 controller ID.
3. Capture 05 controller ID if present.
4. Save DTC-before from 46/05 and related door modules.
5. Export maps if available in read-only mode.
6. Photograph MMI comfort menu.
7. Record equipment observations without changing settings.

## Ryzyka

| Risk | Level | Control |
|---|---|---|
| Access authorization misinterpretation | HIGH | no adaptation, no key learning, no Security Access |
| Comfort feature assumptions | MEDIUM/HIGH | observation only |
| Door module variants | MEDIUM | keep variant-specific |

## Czego nie klikać

- Do not perform key learning.
- Do not perform access authorization adaptation.
- Do not enter Security Access.
- Do not change central locking values.
- Do not clear DTCs before evidence is saved.

## Warunki bezpieczeństwa

- All keys kept available but not adapted.
- No immobilizer/access operations.
- Read-only observation only.
- DTC and module ID recorded before any future review.

## Oczekiwany rezultat

A comfort/access evidence package for later review of BCM2/J393, access authorization, central locking, door and mirror-related P1 evidence gaps.

---

# C-004 — MMI 3G High / 5F

## Cel

Zebrać dowody identyfikacyjne i UI dla MMI 3G High / HNAV: wersja systemu, Red Menu, MMI version screen, CAR menu, Green Menu read-only, DTC and controller context.

## Moduły objęte kampanią

| Address | Module | Purpose |
|---:|---|---|
| 5F | Information Electronics if present | infotainment context |
| 56 | Radio if present | radio/MMI context |
| 07 | Control Head if present | user interface/control context |
| 19 | Gateway | module presence context |
| 47 | Sound System | audio dependency context |
| 6C/10 | Camera/Park Assist if present | reverse/OPS context |

## Wymagane narzędzia

| Tool | Required | Notes |
|---|---:|---|
| VCDS / ODIS / VCP | Recommended | controller ID/DTC/maps |
| Camera/phone | Yes | Red Menu, MMI version, UI photos |
| Stable power support | Recommended | diagnostic session safety |

## Pliki do wygenerowania

| File | Status |
|---|---|
| `mmi_version_screen.md` | TO CAPTURE |
| `red_menu_identification.md` | TO CAPTURE |
| `green_menu_readonly_tree.md` | TO CAPTURE |
| `controller_5f_56_07_identification.md` | TO CAPTURE |
| `dtc_5f_56_07_before.md` | TO CAPTURE |
| `mmi_ui_observation_log.md` | TO CAPTURE |
| `mmi_photo_index.md` | TO CAPTURE |

## Zdjęcia do wykonania

| Photo | Required | Notes |
|---|---:|---|
| MMI version screen | Yes | fastest read-only identity evidence |
| Red Engineering Menu identity pages | Yes | do not run update/SWDL actions |
| CAR menu main pages | Recommended | read-only UI evidence |
| Audio source list | Recommended | read-only UI evidence |
| Green Menu visible path pages | Optional | read-only only |
| HDD/media/nav screens if relevant | Optional | only visible state |

## Logi do zapisania

| Log | Required | Notes |
|---|---:|---|
| 5F/56/07 DTC before | Yes if diagnostic access exists | before-state only |
| Controller ID blocks | Yes if diagnostic access exists | part number/SW/component |
| Full Auto-Scan | Recommended | ideally from C-001 |
| UI observation notes | Yes | menu path and visible state |

## Dane z Auto-Scan

| Data | Required | Status |
|---|---:|---|
| 5F/56/07 presence | Yes if available | TO CAPTURE |
| Part number/component/SW | Yes if available | TO CAPTURE |
| Coding string presence | Yes if available | TO CAPTURE |
| DTC-before | Yes if available | TO CAPTURE |
| Related 19/47/6C/10 context | Recommended | TO CAPTURE |

## Control Module Maps

| Module | Required | Purpose |
|---|---:|---|
| 5F/56/07 | Recommended if available | infotainment baseline |
| 47 | Optional | audio context |
| 6C/10 | Optional | reverse/camera/parking context |

## Adaptation Maps

| Module | Required | Purpose |
|---|---:|---|
| 5F/56/07 | Recommended if available | future adaptation review only |

## Zadania P1, które kampania może pomóc zamknąć

| P1 task group | How campaign helps | Closure status |
|---|---|---|
| HNAV identity evidence gaps | captures version/Red Menu/controller context | NOT CLOSED |
| MMI CAR menu evidence gaps | captures UI screens and paths | NOT CLOSED |
| Green/Red Menu evidence gaps | captures read-only menu data | NOT CLOSED |
| Infotainment DTC context gaps | captures DTC-before | NOT CLOSED |
| 5F/56/07 addressing uncertainty | captures diagnostic module exposure | NOT CLOSED |

## Kolejność wykonania

1. Capture MMI version screen.
2. Capture Red Menu identity pages only.
3. Capture CAR menu screens.
4. Capture audio source list.
5. If safe, capture Green Menu visible paths only.
6. Run diagnostic ID/DTC capture if available.
7. Save all evidence with photo index.

## Ryzyka

| Risk | Level | Control |
|---|---|---|
| Red Menu engineering action triggered | HIGH | identity/read-only pages only |
| Green Menu value changed accidentally | HIGH | read-only observation only |
| Treating UI visibility as function | MEDIUM/HIGH | mark as observation |
| Region/SW assumptions | MEDIUM | require screenshot/transcription |

## Czego nie klikać

- Do not run SWDL/update.
- Do not enter emergency/update paths.
- Do not change Green Menu values.
- Do not run region conversion.
- Do not use Security Access.
- Do not write datasets or parameterization.

## Warunki bezpieczeństwa

- Photos readable.
- Menu paths documented.
- No write actions.
- Any unclear value marked `UNCLEAR` or `NOT VISIBLE`.
- No assumptions from memory.

## Oczekiwany rezultat

An MMI 3G High / HNAV evidence package that supports later identity and UI review without confirming coding/adaptation behavior.

---

# C-005 — Audio / MOST / B&O

## Cel

Zebrać dowody dotyczące systemu audio, MOST topology, B&O/external amplifier context, source visibility, source output observations and audio-related DTCs.

## Moduły objęte kampanią

| Address | Module | Purpose |
|---:|---|---|
| 47 | Sound System | amplifier/audio baseline |
| 5F/56 | MMI/radio source context | source visibility and DTC context |
| 19 | Gateway | module presence and network context |
| 07 | Control Head | UI control context if present |
| MOST devices if visible in scan | audio network context | dependency review |

## Wymagane narzędzia

| Tool | Required | Notes |
|---|---:|---|
| Diagnostic tool | Yes | 47/5F/56 DTC and identity |
| Camera/phone | Yes | source list and audio UI evidence |
| Audio observation notes | Yes | output/no-output observations, not conclusions |

## Pliki do wygenerowania

| File | Status |
|---|---|
| `controller_47_identification.md` | TO CAPTURE |
| `dtc_audio_most_before.md` | TO CAPTURE |
| `most_audio_status.md` | TO CAPTURE |
| `audio_source_ui_observation.md` | TO CAPTURE |
| `audio_photo_index.md` | TO CAPTURE |
| `control_module_map_47.txt` | TO CAPTURE if available |
| `adaptation_map_47.csv` | TO CAPTURE if available |

## Zdjęcia do wykonania

| Photo | Required | Notes |
|---|---:|---|
| Audio source list | Yes | radio/media/SD/HDD/AUX/AMI/BT if visible |
| Sound settings screen | Recommended | read-only |
| B&O/Bose branding/equipment if visible | Optional | physical/UI evidence only |
| Diagnostic 47 ID screen | Recommended | if export unavailable |
| Any audio error message | Recommended | do not clear before logging |

## Logi do zapisania

| Log | Required | Notes |
|---|---:|---|
| 47 DTC before | Yes | audio baseline |
| 5F/56 DTC before | Recommended | source context |
| Gateway list | Recommended | module presence |
| MOST/audio status notes | Yes | observation only |

## Dane z Auto-Scan

| Data | Required | Status |
|---|---:|---|
| 47 presence/identity | Yes | TO CAPTURE |
| 47 DTCs | Yes | TO CAPTURE |
| 5F/56 DTCs | Recommended | TO CAPTURE |
| MOST-related faults | Recommended | TO CAPTURE |
| Gateway list/audio module presence | Recommended | TO CAPTURE |

## Control Module Maps

| Module | Required | Purpose |
|---|---:|---|
| 47 | Recommended | amplifier/audio baseline |
| 5F/56 | Optional | source context |

## Adaptation Maps

| Module | Required | Purpose |
|---|---:|---|
| 47 | Optional | future audio review only |
| 5F/56 | Optional | source/menu review only |

## Zadania P1, które kampania może pomóc zamknąć

| P1 task group | How campaign helps | Closure status |
|---|---|---|
| Audio/MOST evidence gaps | captures module and DTC context | NOT CLOSED |
| B&O/external amp context gaps | captures 47 identity and equipment evidence | NOT CLOSED |
| Source visibility/function uncertainty | captures UI/source observations | NOT CLOSED |
| MOST communication uncertainty | captures DTC and module presence | NOT CLOSED |

## Kolejność wykonania

1. Capture source list photos.
2. Capture audio settings screen if relevant.
3. Run 47 controller ID capture.
4. Save 47 DTC-before.
5. Save 5F/56 audio-related DTCs if available.
6. Save Gateway module presence context.
7. Document output observations without concluding cause.

## Ryzyka

| Risk | Level | Control |
|---|---|---|
| Misdiagnosing source visibility as audio route | HIGH | observation only |
| MOST fault misinterpretation | HIGH | require DTC/module context |
| Amplifier variant assumptions | MEDIUM/HIGH | keep variant-specific |

## Czego nie klikać

- Do not change audio coding.
- Do not change amplifier adaptations.
- Do not perform component protection-related actions.
- Do not clear DTCs before saving baseline.
- Do not run output tests as part of evidence intake.

## Warunki bezpieczeństwa

- Volume kept at safe level.
- No coding/adaptation writes.
- DTC-before saved.
- UI observations separated from cause conclusions.

## Oczekiwany rezultat

An audio/MOST evidence package for later review of B&O, MOST, source visibility and sound-system dependency claims.

---

# C-006 — Komfort / drzwi / lusterka

## Cel

Zebrać dowody dla komfortu, drzwi, lusterek, pamięci/pozycji, central locking UI context and related MMI/BCM/door module dependencies.

## Moduły objęte kampanią

| Address | Module | Purpose |
|---:|---|---|
| 42 | Driver Door | door/mirror context if present |
| 52 | Passenger Door | door/mirror context if present |
| 62/72 | Rear Door modules | rear door context if present |
| 46 | Central Convenience / BCM2 | comfort baseline |
| 09 | Central Electrics | body dependency context |
| 5F | MMI | CAR comfort menu context |
| 19 | Gateway | module presence context |
| 17 | Cluster | warning/context if relevant |

## Wymagane narzędzia

| Tool | Required | Notes |
|---|---:|---|
| Diagnostic tool | Yes | door/comfort module context |
| Camera/phone | Yes | switches, MMI screens, visible behavior |
| Observation worksheet | Yes | separate visible behavior from technical cause |

## Pliki do wygenerowania

| File | Status |
|---|---|
| `door_module_identification.md` | TO CAPTURE |
| `dtc_door_comfort_before.md` | TO CAPTURE |
| `comfort_door_mirror_observation_log.md` | TO CAPTURE |
| `mmi_comfort_ui_photos.md` | TO CAPTURE |
| `control_module_map_door_modules.txt` | TO CAPTURE if available |
| `adaptation_map_door_modules.csv` | TO CAPTURE if available |

## Zdjęcia do wykonania

| Photo | Required | Notes |
|---|---:|---|
| MMI comfort/locking menu | Yes | read-only |
| Driver door switch panel | Recommended | equipment context |
| Mirror control switch | Recommended | equipment context |
| Memory seat/mirror buttons if present | Optional | equipment context |
| Cluster/MMI warning if present | Recommended | before clearing |

## Logi do zapisania

| Log | Required | Notes |
|---|---:|---|
| Door module DTCs | Yes if present | before-state |
| 46 DTCs | Recommended | comfort baseline |
| Gateway list | Recommended | module presence |
| Door module IDs | Recommended | part/SW/component context |

## Dane z Auto-Scan

| Data | Required | Status |
|---|---:|---|
| 42/52/62/72 presence | Recommended | TO CAPTURE |
| 42/52/62/72 DTCs | Recommended | TO CAPTURE |
| 46 DTCs and identity | Recommended | TO CAPTURE |
| 5F/19 context | Recommended | TO CAPTURE |

## Control Module Maps

| Module | Required | Purpose |
|---|---:|---|
| 42/52 | Optional if present | door/mirror context |
| 62/72 | Optional if present | rear door context |
| 46 | Recommended | comfort context |

## Adaptation Maps

| Module | Required | Purpose |
|---|---:|---|
| 42/52/62/72 | Optional | future review only |
| 46 | Optional | comfort review only |

## Zadania P1, które kampania może pomóc zamknąć

| P1 task group | How campaign helps | Closure status |
|---|---|---|
| Door module evidence gaps | captures module presence/context | NOT CLOSED |
| Mirror feature uncertainty | captures equipment/UI observations | NOT CLOSED |
| Comfort UI dependency gaps | links MMI menu with comfort/door modules | NOT CLOSED |
| Door/comfort DTC context gaps | captures before-state faults | NOT CLOSED |

## Kolejność wykonania

1. Capture MMI comfort/locking screens.
2. Photograph switch/equipment context.
3. Capture door/comfort module IDs if diagnostic access exists.
4. Save DTC-before for relevant modules.
5. Export maps only if supported in read-only mode.
6. Record observations without feature conclusions.

## Ryzyka

| Risk | Level | Control |
|---|---|---|
| Treating equipment presence as function support | MEDIUM | evidence only |
| Door module variant differences | MEDIUM/HIGH | keep variant-specific |
| Comfort/access confusion | HIGH | separate from C-003 access authorization |

## Czego nie klikać

- Do not change door module coding.
- Do not perform mirror/seat adaptations.
- Do not perform key/access operations.
- Do not clear DTCs before baseline.
- Do not run output tests during intake.

## Warunki bezpieczeństwa

- Vehicle stationary.
- Door movements safe and documented.
- No coding/adaptation writes.
- UI/equipment observations separated from cause conclusions.

## Oczekiwany rezultat

A comfort/door/mirror evidence package for later review of MMI comfort menus, door modules, mirror equipment and related P1 evidence gaps.

---

# C-007 — Oświetlenie / lampy / BCM coding

## Cel

Zebrać dowody dotyczące wyposażenia lamp, MMI CAR light menu, BCM/J519 context, 55 Headlight Range context, DTC-before and market/equipment differences.

## Moduły objęte kampanią

| Address | Module | Purpose |
|---:|---|---|
| 09 | Central Electrics / BCM1 / J519 | lighting/body baseline |
| 55 | Headlight Range | xenon/AFS context if present |
| 17 | Instrument Cluster | warning display context |
| 19 | Gateway | module presence context |
| 5F | MMI | CAR light menu context |
| 46 | Central Convenience | CH/LH dependency context |

## Wymagane narzędzia

| Tool | Required | Notes |
|---|---:|---|
| Diagnostic tool | Yes | module ID, DTC, maps if available |
| Camera/phone | Yes | lamp equipment and MMI menu photos |
| Stable power support | Recommended | diagnostic session safety |
| Observation worksheet | Yes | separate equipment/menu evidence from conclusions |

## Pliki do wygenerowania

| File | Status |
|---|---|
| `lighting_equipment_photo_index.md` | TO CAPTURE |
| `mmi_light_menu_observation.md` | TO CAPTURE |
| `controller_09_55_identification.md` | TO CAPTURE |
| `dtc_lighting_before.md` | TO CAPTURE |
| `control_module_map_09_55.txt` | TO CAPTURE if available |
| `adaptation_map_09_55.csv` | TO CAPTURE if available |
| `lighting_market_equipment_notes.md` | TO CAPTURE |

## Zdjęcia do wykonania

| Photo | Required | Notes |
|---|---:|---|
| Front lamps exterior | Yes | equipment context only |
| Rear lamps exterior | Recommended | equipment context only |
| DRL visible equipment if present | Recommended | do not infer coding |
| MMI light menu screens | Yes | read-only |
| Cluster/MMI bulb warnings if present | Recommended | before clearing |
| Diagnostic ID screens for 09/55 | Recommended | if export unavailable |

## Logi do zapisania

| Log | Required | Notes |
|---|---:|---|
| 09 DTC-before | Yes | lighting/body context |
| 55 DTC-before if present | Recommended | headlight range context |
| 17 warning-related DTCs | Recommended | cluster context |
| 19 Gateway context | Recommended | module presence |
| 5F light menu UI observations | Yes | read-only |

## Dane z Auto-Scan

| Data | Required | Status |
|---|---:|---|
| 09 identity and DTC | Yes | TO CAPTURE |
| 55 identity and DTC if present | Recommended | TO CAPTURE |
| 17 DTC context | Recommended | TO CAPTURE |
| 19 installation context | Recommended | TO CAPTURE |
| 5F/MMI context | Recommended | TO CAPTURE |

## Control Module Maps

| Module | Required | Purpose |
|---|---:|---|
| 09 | Recommended | lighting/body baseline |
| 55 | Optional if present | headlight range context |
| 5F | Optional | menu context |

## Adaptation Maps

| Module | Required | Purpose |
|---|---:|---|
| 09 | Recommended | future review only |
| 55 | Optional if present | future review only |
| 5F | Optional | MMI menu context only |

## Zadania P1, które kampania może pomóc zamknąć

| P1 task group | How campaign helps | Closure status |
|---|---|---|
| Lighting equipment evidence gaps | captures lamp photos and module context | NOT CLOSED |
| MMI light menu dependency gaps | captures UI and 09/55/19 context | NOT CLOSED |
| BCM coding evidence gaps | captures baseline context only | NOT CLOSED |
| Bulb warning/DTC gaps | captures before-state faults and warnings | NOT CLOSED |
| market/equipment difference uncertainty | captures vehicle/equipment evidence | NOT CLOSED |

## Kolejność wykonania

1. Confirm C-001/C-002 evidence exists if possible.
2. Photograph MMI light menu screens.
3. Photograph exterior lamp equipment.
4. Capture 09/55 controller identification.
5. Save DTC-before for 09/55/17 if available.
6. Export maps if available in read-only mode.
7. Record market/equipment notes without conclusions.

## Ryzyka

| Risk | Level | Control |
|---|---|---|
| Lighting legal/safety interpretation | HIGH | no conclusions from planning alone |
| Mistaking lamp hardware for coding support | HIGH | evidence only |
| Fault clearing before baseline | HIGH | do not clear before saving |
| Variant/market assumptions | MEDIUM/HIGH | mark as `TO VERIFY` |

## Czego nie klikać

- Do not change light coding.
- Do not change BCM adaptations.
- Do not perform output tests.
- Do not clear DTCs before baseline.
- Do not test lighting changes on public road.
- Do not use Security Access.

## Warunki bezpieczeństwa

- Vehicle stationary.
- No coding/adaptation writes.
- Exterior photos taken safely.
- DTC-before preserved.
- Any public version sanitized.

## Oczekiwany rezultat

A lighting evidence package for later review of lamp equipment, MMI light menu, BCM/J519, 55 Headlight Range and warning-related P1 evidence gaps.

---

## Campaign-to-evidence summary

| Campaign | Highest-value evidence produced | Best used for |
|---|---|---|
| C-001 | Auto-Scan, Gateway list, network DTC | all dependency campaigns |
| C-002 | 09 identity, DTC, maps, MMI light menu context | BCM1/J519 and light/comfort dependencies |
| C-003 | 46/05 identity, comfort/access context | BCM2/J393/access authorization gaps |
| C-004 | MMI version, Red Menu, UI evidence, 5F/56/07 context | HNAV/MMI identity and UI gaps |
| C-005 | 47 identity, MOST/audio DTC, source UI | B&O/audio/MOST gaps |
| C-006 | door module context, mirror/comfort observations | comfort/door/mirror gaps |
| C-007 | lamp equipment, 09/55 context, light menu evidence | lighting and BCM evidence gaps |

## Recommended First Campaign

The recommended first campaign is:

# C-001 — Gateway / CAN / Installation List

Reason:

C-001 should be performed first because it establishes the global diagnostic baseline for the vehicle. The Gateway installation list and full Auto-Scan determine which modules are installed, reachable or faulted before any deeper evidence campaign is interpreted. Without this baseline, later campaigns can easily misclassify a missing menu, silent audio source, camera issue, comfort behavior or lighting warning as an MMI problem when it may actually be a network, module-presence or communication-context issue.

C-001 also produces evidence needed by all other campaigns:

- module presence,
- communication faults,
- DTC-before state,
- Gateway installation list,
- network dependency context,
- baseline for later module-specific evidence.

Executing C-001 first does not solve any task and does not mark anything as verified. It only creates the safest evidence foundation for all later E3 field data campaigns.

E3 CAMPAIGNS CREATED
