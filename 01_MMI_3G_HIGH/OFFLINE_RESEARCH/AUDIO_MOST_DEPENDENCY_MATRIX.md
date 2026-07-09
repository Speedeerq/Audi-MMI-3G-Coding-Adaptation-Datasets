# MMI 3G High — Audio / MOST Dependency Matrix

## Purpose

This file maps provisional Audio and MOST-related relationships for MMI 3G High research.

It is a research planning document only. It does not confirm any configuration or provide operational changes.

## Status policy

| Status | Meaning |
|---|---|
| ⚫ UNKNOWN | Not assessed |
| 🔴 HYPOTHESIS | Research suspicion only |
| 🟠 TO VERIFY | Evidence required |
| 🟡 VARIANT | Depends on HW/SW/equipment |
| 🟢 CONFIRMED | Not allowed without controlled evidence |

## Audio / MOST matrix

| Area | Possible related modules | Evidence required | Risk | Read-only observation allowed? | Blocked until evidence exists | Status |
|---|---|---|---|---:|---|---|
| Radio | 5F, 56, 47, 19 | UI source photo, module context, DTC context | HIGH | Yes | Cause attribution | 🟠 TO VERIFY |
| Media / SD / HDD | 5F, 47 | UI source evidence, storage state, audio output observation | HIGH | Yes | Technical explanation of failure | 🟠 TO VERIFY |
| AUX | 5F, 47, hardware input context | UI source evidence, physical input context | MEDIUM | Yes | Hardware/configuration conclusion | 🟠 TO VERIFY |
| AMI | 5F, 47, AMI hardware context | UI source evidence, hardware context | MEDIUM | Yes | Hardware/configuration conclusion | 🟠 TO VERIFY |
| Bluetooth audio | 5F, 47, phone/BT module context where applicable | UI source evidence, pairing/audio observation | HIGH | Yes | Route/configuration conclusion | 🟠 TO VERIFY |
| Navigation voice | 5F, 47 | Route guidance observation, volume/source behavior evidence | HIGH | Yes | Cause attribution | 🟠 TO VERIFY |
| B&O / Bose / external amp | 47, 5F, 19 | amplifier scan context, MOST/DTC context, output observation | HIGH | Yes | Amplifier dependency conclusion | 🟠 TO VERIFY |
| MOST ring health | 5F, 47, 56, other MOST devices | DTC context, optical/network context if available | HIGH | Limited | Fault-free claim | 🟠 TO VERIFY |

## Observation template

| Observation ID | Source/function | Visible? | Selectable? | Audio output observed? | Related modules suspected | Evidence | Status |
|---|---|---|---|---|---|---|---|
| AUD-OBS-001 | TBD | TBD | TBD | TBD | TBD | TBD | 🟠 TO VERIFY |

## Evidence rules

| Claim type | Required evidence |
|---|---|
| Source is visible | UI photo or video |
| Source produces output | Video/audio observation plus source state |
| Amplifier dependency | Module context and DTC context |
| MOST-related issue | DTC context and related module context |
| Variant-specific behavior | part number, software, equipment and market context |

## Blocked claims without evidence

| Claim | Status |
|---|---|
| A specific module caused audio loss | 🔴 HYPOTHESIS until evidence |
| A source is unavailable because of a configuration state | 🔴 HYPOTHESIS until evidence |
| MOST ring is healthy | ⚫ UNKNOWN without diagnostic context |
| External amplifier profile is confirmed | ⚫ UNKNOWN without module evidence |

## Current decision

This matrix may be used to plan read-only observations and future evidence capture.

It must not be used as an operational instruction.
