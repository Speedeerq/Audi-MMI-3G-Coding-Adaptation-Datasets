# Current Baseline Capture Handoff — Gateway / MMI — 2026-07-12

## Superseding status notice

```text
EVIDENCE-CONFIRMATION SESSION: NO LONGER REQUIRED
OWNER SOURCE ATTESTATION: ACCEPTED
```

On 2026-07-12 the owner confirmed that the previously supplied files, Auto-Scans and screenshot-derived values are authentic and correctly transcribed. This handoff is therefore **not required to validate or accept those existing evidence items**.

Retain the procedure below only for either:

1. an optional future current-state refresh, or
2. a mandatory same-session pre-write safety snapshot if a write-capable experiment is later approved.

A future safety snapshot would protect rollback capability; it would not re-verify the accepted source evidence.

## Optional future objective

Create a fresh current-state package without changing coding, adaptations, DTCs or the Gateway Installation List.

## Session conditions

```text
mode: READ ONLY
battery support: recommended
ignition: ON
engine: OFF unless tool procedure requires otherwise
DTC clear: NO
coding write: NO
adaptation write: NO
Installation List change: NO
Security Access: NO
Basic Settings: NO
Output Tests: NO
SWDL/flash: NO
```

## Optional capture order

1. Record date, time, mileage, tool version, interface and voltage.
2. Run and save a complete Auto-Scan before clearing anything.
3. Open `19-CAN Gateway` and save Controller Info / Advanced ID.
4. Save Gateway DTC-before.
5. Open Installation List only for observation.
6. Capture every list page from top to bottom.
7. Close Installation List with `Cancel/No` and no write.
8. Open `5F Information Electronics`.
9. Save 5F Controller Info and DTC-before.
10. Photograph the MMI user-visible Version Information screen.
11. Photograph Red Menu identity pages only, if already accessible.
12. End the session without clearing DTCs or writing changes.

## Optional file layout

```text
CURRENT_BASELINE_YYYY-MM-DD/
├── C001_FULL_AUTOSCAN_BEFORE.txt
├── C001_19_GATEWAY_ID.txt
├── C001_19_GATEWAY_DTC_BEFORE.txt
├── C001_19_INSTALLATION_LIST_01.png
├── C001_19_INSTALLATION_LIST_02.png
├── C001_19_INSTALLATION_LIST_03.png
├── C004_5F_ID.txt
├── C004_5F_DTC_BEFORE.txt
├── C004_MMI_VERSION_SCREEN.jpg
├── C004_RED_MENU_ID_01.jpg
├── C004_RED_MENU_ID_02.jpg
└── SESSION_NOTES.md
```

## Installation List safety

Do not click:

```text
Save
Write Coding
Do It!
```

Do not alter any checkbox. If the tool asks whether to save, select `No` or `Cancel`.

## Current decision

```text
RE-CAPTURE FOR EVIDENCE ACCEPTANCE: NOT REQUIRED
OPTIONAL CURRENT-STATE REFRESH: AVAILABLE
PRE-WRITE SAFETY SNAPSHOT: REQUIRED ONLY IF A WRITE EXPERIMENT IS LATER APPROVED
WRITE-CAPABLE EXPERIMENTS: NOT AUTHORIZED
```