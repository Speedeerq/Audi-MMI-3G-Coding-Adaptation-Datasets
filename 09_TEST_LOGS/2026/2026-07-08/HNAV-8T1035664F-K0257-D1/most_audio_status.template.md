# MOST / Audio Status Template — HNAV Baseline

## Purpose

Capture MOST ring, sound system and audio-source context before HNAV research tests.

Audio source visibility and behavior may depend on MMI coding, Gateway list, amplifier configuration, MOST communication and Green Menu state.

## Metadata

| Field | Value | Status |
|---|---|---|
| Evidence ID | `HNAV-EV-008` | 🟠 TO CAPTURE |
| Baseline ID | `HNAV-8T1035664F-K0257-D1` | 🟠 TO VERIFY |
| Source file | `AUTOSCAN_HNAV_TEMPLATE.md` / audio-related controller blocks | 🟠 TO CAPTURE |
| Date captured | TBD | 🟠 TO CAPTURE |
| Tool used | TBD | 🟠 TO CAPTURE |
| MMI controller | TBD | 🟠 TO CAPTURE |
| Sound system controller | TBD | 🟠 TO CAPTURE |

## Audio system identification

| Field | Value | Status | Evidence |
|---|---|---|---|
| External amplifier present | TBD | 🟠 TO CAPTURE | TBD |
| Sound system type | UNKNOWN | ⚫ UNKNOWN | TBD |
| Controller `47` present | TBD | 🟠 TO CAPTURE | TBD |
| Controller `56` present | TBD | 🟠 TO CAPTURE | TBD |
| MOST-related DTC present | TBD | 🟠 TO CAPTURE | TBD |
| Audio sources visible in MMI | TBD | 🟠 TO CAPTURE | TBD |
| Audio output functional | TBD | 🟠 TO CAPTURE | TBD |

## MOST / audio DTC extract

```text
TBD - paste MOST/audio/amplifier related DTC and scan blocks here
```

## Source visibility baseline

| Source/function | Visible in MMI? | Functional? | Notes | Status |
|---|---|---|---|---|
| Radio | TBD | TBD | TBD | 🟠 TO CAPTURE |
| Media / SD | TBD | TBD | TBD | 🟠 TO CAPTURE |
| CD/DVD | TBD | TBD | TBD | 🟠 TO CAPTURE |
| AUX | TBD | TBD | TBD | 🟠 TO CAPTURE |
| AMI | TBD | TBD | TBD | 🟠 TO CAPTURE |
| Bluetooth audio | TBD | TBD | TBD | 🟠 TO CAPTURE |
| Navigation voice | TBD | TBD | TBD | 🟠 TO CAPTURE |
| Parking/camera audio interaction | TBD | TBD | TBD | 🟠 TO CAPTURE |

## Dependency questions

| Question | Answer | Status |
|---|---|---|
| Does audio depend on external amplifier coding? | TBD | ⚫ UNKNOWN |
| Does MOST report communication faults? | TBD | 🟠 TO CAPTURE |
| Are visible sources functional or only displayed? | TBD | 🟠 TO CAPTURE |
| Are source states affected by Green Menu? | TBD | ⚫ UNKNOWN |
| Is the system safe for audio-source tests? | No until reviewed | 🔴 BLOCKED |

## Risk note

Do not change MOST/audio settings during baseline capture.

Audio/MOST tests must be separate controlled tests because a wrong configuration may cause:

- no sound,
- amplifier communication faults,
- MOST ring faults,
- source visibility without output,
- persistent DTC,
- interaction with camera/parking/nav voice behavior.
