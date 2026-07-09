# Red Menu Fallback Capture Guide — HNAV

## Purpose

This guide defines how to capture Red Engineering Menu evidence when full Auto-Scan is temporarily unavailable.

This is a read-only workflow. Do not execute SWDL, update, dataset, region-change or engineering actions.

## Evidence package

| File | Purpose | Status |
|---|---|---|
| `red_menu_identification.template.md` | Main Red Menu identification form | 🟠 TO CAPTURE |
| `red_menu_photo_checklist.md` | Photo checklist and required screens | 🟠 TO CAPTURE |
| `red_menu_transcription_worksheet.md` | Manual transcription sheet | 🟠 TO CAPTURE |
| `red_menu_evidence_status.md` | Evidence status and usability decision | 🟠 TO CAPTURE |

## Capture rules

| Rule | Requirement |
|---|---|
| Mode | Read-only only |
| Changes allowed | No |
| SWDL/update actions | Blocked |
| Dataset/parameterization actions | Blocked |
| Security Access | Blocked |
| Green Menu changes | Blocked |
| Coding/adaptation changes | Blocked |
| Evidence status | Maximum `🟠 TO VERIFY` until Auto-Scan exists |

## What to capture

Minimum photo set:

| Priority | Screen | Required | Notes |
|---:|---|---:|---|
| 1 | Main Red Engineering Menu identification screen | Yes | Must show system/SW context if available |
| 2 | SW train / version screen | Yes | Needed for HNAV train confirmation |
| 3 | MU/SW version screen | Yes | Needed for MU baseline |
| 4 | Region/database screen | Recommended | Useful for EU/USA/ROW hypothesis |
| 5 | Navigation/map database screen | Recommended | Useful for map/version context |
| 6 | Any screen with Variant / RadioUnit / Sample | Recommended | Useful for existing HNAV notes |

## Naming convention for media

Use this convention when adding media later:

```text
media/red_menu_001_main.jpg
media/red_menu_002_sw_train.jpg
media/red_menu_003_mu_version.jpg
media/red_menu_004_region_database.jpg
media/red_menu_005_map_database.jpg
media/red_menu_006_variant_radiounit_sample.jpg
```

## Manual capture instructions

1. Open Red Engineering Menu.
2. Do not change any value.
3. Take clear photos of identification/version pages.
4. Transcribe visible values into `red_menu_transcription_worksheet.md`.
5. Update `red_menu_evidence_status.md`.
6. Compare with `UNIT_PROFILE.md`.
7. Keep status as `🟠 TO VERIFY` until Auto-Scan confirms controller metadata.

## Evidence limitation

Red Menu fallback evidence can support:

- HNAV family hypothesis,
- SW train hypothesis,
- MU/SW version hypothesis,
- region/database hypothesis,
- map/navigation version hypothesis,
- variant profile questions.

It cannot confirm:

- long coding,
- adaptation channels,
- DTC state,
- Gateway installation list,
- MOST/audio state,
- Security Access requirements,
- dataset safety,
- rollback readiness.
