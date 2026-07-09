# UI Observation Log Template — HNAV Fallback

## Purpose

Capture visible MMI behavior without diagnostic Auto-Scan access.

This file is for read-only UI observation only. It must not be used to confirm coding/adaptation behavior.

## Metadata

| Field | Value | Status |
|---|---|---|
| Evidence ID | `HNAV-FB-UI-001` | 🟠 TO CAPTURE |
| Baseline ID | `HNAV-8T1035664F-K0257-D1` | 🟠 TO VERIFY |
| Capture date | TBD | 🟠 TO CAPTURE |
| Vehicle state | TBD | 🟠 TO CAPTURE |
| Ignition state | TBD | 🟠 TO CAPTURE |
| Engine state | TBD | 🟠 TO CAPTURE |
| Auto-Scan available? | No | 🟠 TO VERIFY |

## UI observation table

| Observation ID | Area | Menu path / screen | Visible? | Functional? | User action | Observed behavior | Evidence media | Status |
|---|---|---|---|---|---|---|---|---|
| HNAV-UI-001 | CAR menu | TBD | TBD | TBD | Read-only | TBD | TBD | 🟠 TO CAPTURE |
| HNAV-UI-002 | Audio sources | TBD | TBD | TBD | Read-only | TBD | TBD | 🟠 TO CAPTURE |
| HNAV-UI-003 | Navigation | TBD | TBD | TBD | Read-only | TBD | TBD | 🟠 TO CAPTURE |
| HNAV-UI-004 | Setup/version | TBD | TBD | TBD | Read-only | TBD | TBD | 🟠 TO CAPTURE |
| HNAV-UI-005 | Green Menu read-only | TBD | TBD | TBD | Read-only only | TBD | TBD | 🟠 TO CAPTURE |

## CAR menu observation

```text
TBD - describe visible CAR menu entries without changing values
```

## Audio source observation

```text
TBD - describe visible audio sources and whether sound output works
```

## Navigation/version observation

```text
TBD - describe visible nav/map/version screens
```

## Green Menu read-only observation

```text
TBD - describe visible paths only. Do not change values.
```

## Safety rules

Allowed:

- photos,
- videos,
- transcription,
- menu tree mapping,
- visible/non-visible observations.

Blocked:

- changing coding,
- changing adaptations,
- changing Green Menu values,
- running SWDL/update actions,
- dataset/parameterization operations,
- Security Access experiments.

## Research limit

UI observations can show what is visible or functional from the user's perspective.

They cannot prove which byte, bit, adaptation channel, dataset or module configuration caused the behavior.
