# First Real Evidence Intake — MMI 3G High HNAV

## Scope

This folder contains the first sanitized evidence-intake package for baseline `HNAV-8T1035664F-K0257-D1` and campaign `C-004`.

The package records a real project unit context, but it is intentionally `PARTIAL`. The available identifiers come from project notes supplied by the unit owner. No raw diagnostic export, original screenshot or original capture timestamp is attached yet.

## Known identifiers pending corroboration

| Field | Recorded value | Evidence status |
|---|---|---|
| Controller context | `5F` Information Electronics | `PARTIAL` |
| Unit part number | `8T1 035 664 F` | `PARTIAL` |
| System family | Audi MMI 3G High / HNAV | `PARTIAL` |
| Software train | `HNav_EU_K0257_5_D1` | `PARTIAL` |
| Variant | `9307` | `PARTIAL` |
| RadioUnit | `9471` | `PARTIAL` |
| MU version | `0187` | `PARTIAL` |
| Sample | `d1` | `PARTIAL` |

These values must not be promoted to a confirmed technical claim until a raw controller-identification block, Red Menu identity capture or equivalent corroborating evidence is reviewed.

## Included files

| File | Purpose |
|---|---|
| `evidence_pack.json` | Evidence manifest, statuses, risks and blocked claims |
| `controller_identification.json` | Sanitized partial controller identity record |
| `campaign_C-004.json` | Read-only capture campaign for missing evidence |
| `VALIDATION_REPORT.md` | Syntax, schema and public-safety review result |
| `REVIEW_HANDOFF.md` | Review-first handoff and blockers |

## Missing evidence

The following evidence is still required:

- raw controller-identification export or screenshot
- full sanitized Auto-Scan before changes
- DTC baseline before changes
- MMI version screen
- Red Engineering Menu identity pages
- original coding backup before coding research
- read-only adaptation map before adaptation research
- private recovery and backup plan before dataset, parameterization or SWDL research

## Safety boundary

This package contains no:

- VIN or registration plate
- customer or owner personal data
- private local paths
- access codes or login values
- coding or adaptation values
- binary datasets or software packages
- private or proprietary URLs
- release-ready claim

No configuration, update, emergency, dataset, parameterization, coding or adaptation action is authorized by this package.

## Current decision

`PARTIAL — READY FOR MANUAL REVIEW`

The package may support planning and evidence collection. It does not confirm unit identity, software behavior, coding, adaptation, Security Access, dataset behavior or HNAV-to-HN+ conversion feasibility.
