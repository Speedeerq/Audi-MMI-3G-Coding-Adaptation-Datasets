# Red Menu Photo Checklist — HNAV Fallback

## Purpose

This checklist defines the exact photos needed for Red Engineering Menu fallback evidence.

Photos must be read-only evidence. Do not execute menu actions.

## Required photos

| Photo ID | Screen / content | Required | Filename | Captured? | Notes |
|---|---|---:|---|---:|---|
| RM-PHOTO-001 | Main Red Engineering Menu / version overview | Yes | `media/red_menu_001_main.jpg` | No | Must show enough context to identify menu |
| RM-PHOTO-002 | SW train / software version | Yes | `media/red_menu_002_sw_train.jpg` | No | Needed for HNAV train evidence |
| RM-PHOTO-003 | MU/SW version | Yes | `media/red_menu_003_mu_version.jpg` | No | Needed for MU baseline |
| RM-PHOTO-004 | Region/database info | Recommended | `media/red_menu_004_region_database.jpg` | No | Useful for market/region hypothesis |
| RM-PHOTO-005 | Navigation/map database | Recommended | `media/red_menu_005_map_database.jpg` | No | Useful for map evidence |
| RM-PHOTO-006 | Variant / RadioUnit / Sample if visible | Recommended | `media/red_menu_006_variant_radiounit_sample.jpg` | No | Useful for matching known HNAV notes |
| RM-PHOTO-007 | Any warning/diagnostic info visible | Optional | `media/red_menu_007_warning_or_diag.jpg` | No | Read-only only |

## Photo quality requirements

| Requirement | Required |
|---|---:|
| Text readable | Yes |
| Whole screen visible | Recommended |
| No flash glare over values | Yes |
| One screen per photo | Recommended |
| Photo sequence kept in order | Yes |
| No personal data visible | Yes |

## What not to capture publicly

| Item | Action |
|---|---|
| Full VIN if visible | Blur/redact |
| Owner/customer data | Remove |
| Location data | Remove |
| License plates reflected in screen | Blur/redact |

## Safety stop list

Do not continue if a menu item appears to trigger:

- SWDL,
- update,
- firmware loading,
- dataset/parameterization,
- erase/reset,
- bootloader/emergency update,
- region conversion,
- write operation.

Mark the item as `⚫ UNKNOWN` or `🔴 BLOCKED` and leave it untouched.
