# Test Plan — HNAV 8T1 035 664 F / K0257 D1

## Purpose

This file defines the first controlled research plan for the HNAV baseline.

The first phase is evidence capture only. No unknown bit/channel/login/dataset test is allowed until the baseline is complete.

## Phase A — Baseline capture

| Test ID | Area | Goal | Change allowed? | Status |
|---|---|---|---:|---|
| T-20260708-5F-BASELINE-001 | Identification | Capture controller ID, part number, SW, Red Menu data | No | 🟠 TO CAPTURE |
| T-20260708-5F-CODING-BASELINE-001 | Long Coding | Capture original coding and coding length | No | 🟠 TO CAPTURE |
| T-20260708-5F-ADAPT-BASELINE-001 | Adaptations | Capture adaptation map/export | No | 🟠 TO CAPTURE |
| T-20260708-5F-DTC-BASELINE-001 | DTC | Capture DTC before changes | No | 🟠 TO CAPTURE |
| T-20260708-19-GATEWAY-BASELINE-001 | Gateway | Capture installation list and related DTC | No | 🟠 TO CAPTURE |
| T-20260708-47-AUDIO-BASELINE-001 | Audio/MOST | Capture amplifier/MOST/audio DTC context | No | 🟠 TO CAPTURE |

## Phase B — Read-only mapping

Only after Phase A evidence exists.

| Test ID | Area | Goal | Change allowed? | Status |
|---|---|---|---:|---|
| T-YYYYMMDD-5F-REDMENU-001 | Red Menu | Transcribe identification and read-only entries | No | ⚫ NOT STARTED |
| T-YYYYMMDD-5F-GREENMENU-READ-001 | Green Menu | Record visible menu tree without changing values | No | ⚫ NOT STARTED |
| T-YYYYMMDD-5F-CAR-READ-001 | CAR Menu | Record visible CAR menu entries | No | ⚫ NOT STARTED |
| T-YYYYMMDD-5F-AUDIO-READ-001 | Audio sources | Record visible sources and functional/non-functional state | No | ⚫ NOT STARTED |

## Phase C — Controlled single-change tests

Only after Phase A and Phase B are complete.

| Test ID | Area | Goal | Change allowed? | Status |
|---|---|---|---:|---|
| T-YYYYMMDD-5F-LCOD-001 | Long Coding | Test one known/suspected bit with rollback | Yes, one bit | ⚫ NOT STARTED |
| T-YYYYMMDD-5F-ADAPT-001 | Adaptation | Test one low-risk adaptation value | Yes, one channel | ⚫ NOT STARTED |
| T-YYYYMMDD-5F-CAR-001 | CAR Menu | Test one menu visibility dependency | Yes, one variable | ⚫ NOT STARTED |
| T-YYYYMMDD-5F-AUDIO-001 | Audio | Test one audio/source dependency | Yes, one variable | ⚫ NOT STARTED |

## No-touch areas until recovery path exists

| Area | Status | Reason |
|---|---|---|
| Dataset write | 🔴 BLOCKED | No backup/source/recovery path yet |
| Parameterization write | 🔴 BLOCKED | Critical risk |
| Firmware/SWDL/emergency update | 🔴 BLOCKED | Outside baseline phase |
| EEPROM-like operations | 🔴 BLOCKED | Recovery path required |
| Security Access guessing | 🔴 BLOCKED | No guessing allowed |
| Unknown Green Menu destructive options | 🔴 BLOCKED | Risk not classified |

## Baseline completion criteria

Baseline is complete when:

| Requirement | Required |
|---|---:|
| Full Auto-Scan attached | Yes |
| Controller identification attached | Yes |
| Red Menu identification attached | Yes |
| Original long coding attached | Yes |
| Adaptation map attached | Recommended before adaptation tests |
| DTC before changes attached | Yes |
| Gateway installation list captured | Recommended |
| MOST/audio state captured | Recommended |
| Backup folder created | Yes |

## First safe manual workflow

1. Connect stable charger/power support.
2. Run full Auto-Scan.
3. Save controller identification.
4. Capture Red Engineering Menu identification.
5. Export/copy original coding.
6. Export adaptation map if tool supports it.
7. Save DTC before changes.
8. Do not change anything yet.
9. Commit sanitized evidence into `09_TEST_LOGS` and `10_BACKUPS`.
10. Only then start controlled tests.
