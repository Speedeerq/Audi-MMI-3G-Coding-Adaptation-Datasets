# Red Menu Evidence Status — HNAV Fallback

## Purpose

Track whether Red Engineering Menu fallback evidence is complete enough to support provisional HNAV identification.

This status sheet does not confirm coding, adaptations, Security Access or datasets.

## Evidence status

| Evidence item | Required | Current status | Source file / media | Notes |
|---|---:|---|---|---|
| Main Red Menu photo | Yes | 🟠 TO CAPTURE | `media/red_menu_001_main.jpg` |  |
| SW train photo | Yes | 🟠 TO CAPTURE | `media/red_menu_002_sw_train.jpg` |  |
| MU/SW version photo | Yes | 🟠 TO CAPTURE | `media/red_menu_003_mu_version.jpg` |  |
| Region/database photo | Recommended | 🟠 TO CAPTURE | `media/red_menu_004_region_database.jpg` |  |
| Map/database photo | Recommended | 🟠 TO CAPTURE | `media/red_menu_005_map_database.jpg` |  |
| Variant/RadioUnit/Sample photo | Recommended | 🟠 TO CAPTURE | `media/red_menu_006_variant_radiounit_sample.jpg` |  |
| Transcription completed | Yes | 🟠 TO CAPTURE | `red_menu_transcription_worksheet.md` |  |
| Comparison with UNIT_PROFILE | Yes | 🟠 TO CAPTURE | `UNIT_PROFILE.md` |  |

## Provisional identity decision

| Field | Value from Red Menu | Existing baseline note | Decision | Status |
|---|---|---|---|---|
| HNAV family | TBD | MMI 3G High / HNAV | TBD | 🟠 TO CAPTURE |
| SW train | TBD | `HNav_EU_K0257_5_D1` / `HNav_EU_K0257_6_D1` | TBD | 🟠 TO CAPTURE |
| MU/SW | TBD | `0187` | TBD | 🟠 TO CAPTURE |
| Variant | TBD | `9307` | TBD | 🟠 TO CAPTURE |
| RadioUnit | TBD | `9471` | TBD | 🟠 TO CAPTURE |
| Sample | TBD | `d1` | TBD | 🟠 TO CAPTURE |

## Allowed conclusion levels

| Condition | Allowed status |
|---|---|
| Clear Red Menu photos + transcription, no Auto-Scan | 🟠 TO VERIFY |
| Red Menu + manual controller ID screenshot agree | 🟡 VARIANT |
| Red Menu + full Auto-Scan + controller ID agree | 🟢 CONFIRMED |
| Red Menu conflicts with existing baseline notes | 🟡 VARIANT or 🔴 CONFLICT |
| Photo unclear/unreadable | ⚫ UNKNOWN |

## Blocking conditions

| Condition | Action |
|---|---|
| SWDL/update page opened accidentally | Stop and document only |
| Value is unreadable | Mark `UNCLEAR`, do not infer |
| Field not visible | Mark `NOT VISIBLE`, do not infer |
| Red Menu differs from project notes | Mark conflict, do not overwrite |
| No Auto-Scan | Do not confirm coding/adaptation/dataset behavior |

## Final fallback decision

| Question | Answer | Status |
|---|---|---|
| Is Red Menu fallback evidence captured? | No | 🟠 TO CAPTURE |
| Can HNAV family be provisionally identified? | TBD | 🟠 TO CAPTURE |
| Can SW train be provisionally identified? | TBD | 🟠 TO CAPTURE |
| Can this baseline be used for read-only mapping? | TBD | ⚫ UNKNOWN |
| Can this baseline be used for coding/adaptation tests? | No | 🔴 BLOCKED |
| Is full Auto-Scan still required? | Yes | 🟠 TO CAPTURE |
