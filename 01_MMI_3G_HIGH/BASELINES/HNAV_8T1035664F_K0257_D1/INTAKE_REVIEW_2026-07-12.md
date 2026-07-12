# HNAV Baseline Intake Review — 2026-07-12

## Review scope

This review evaluates the first schema-based evidence intake package against baseline `HNAV-8T1035664F-K0257-D1`.

Source package:

```text
evidence/intake/MMI3GHIGH_HNAV_BASELINE_001/
```

Source branch:

```text
evidence/mmi-3g-high-first-baseline-review
```

## Evidence received

A sanitized controller-identification record now exists with the following project-note identifiers:

| Field | Recorded value | Review status |
|---|---|---|
| Controller context | `5F` Information Electronics | `PARTIAL` |
| Unit part number | `8T1 035 664 F` | `PARTIAL` |
| System family | Audi MMI 3G High / HNAV | `PARTIAL` |
| Software train | `HNav_EU_K0257_5_D1` | `PARTIAL` |
| Variant | `9307` | `PARTIAL` |
| RadioUnit | `9471` | `PARTIAL` |
| MU version | `0187` | `PARTIAL` |
| Sample | `d1` | `PARTIAL` |

The intake record is sanitized and schema-valid. It is not sufficient to confirm these identifiers because the raw diagnostic export, source screenshot and original capture timestamp are not attached.

## Baseline impact

| Baseline area | Previous state | Current review state | Decision |
|---|---|---|---|
| Unit identity | Project notes only | Schema-based sanitized intake added | Keep `TO VERIFY` |
| Controller identification | Missing | Partial record exists; raw source missing | Track as `PARTIAL` evidence |
| Auto-Scan | Missing | Still missing | Keep `TO CAPTURE` |
| DTC baseline | Missing | Still missing | Keep `TO CAPTURE` |
| Original coding | Missing | Still missing | Keep `TO CAPTURE` |
| Adaptation map | Missing | Still missing | Keep `TO CAPTURE` |
| Red Menu identity | Missing | Still missing | Keep `TO CAPTURE` |
| Dataset/recovery baseline | Missing | Explicitly blocked | Keep `BLOCKED` |

## Claims not promoted

This review does not confirm:

- the controller address used by every diagnostic interface
- the hardware version or hwSample meaning
- the software-train history
- coding or adaptation behavior
- Security Access requirements or values
- dataset, parameterization, emergency-update or SWDL behavior
- HNAV-to-HN+ conversion feasibility
- the location of any conversion barrier

## Required corroboration sequence

1. Capture the user-visible MMI version screen.
2. Capture Red Engineering Menu identity pages only.
3. Export a raw single-controller identification block from VCDS, ODIS or VCP.
4. Capture DTC-before state without clearing faults.
5. Run a full Auto-Scan if available.
6. Store raw material privately.
7. Produce sanitized public copies.
8. Revalidate the evidence pack and controller record.
9. Perform a new manual baseline review before changing any claim status.

## Review decision

```text
BASELINE REVIEW RESULT: PARTIAL INTAKE ACCEPTABLE FOR CONTINUED CAPTURE
TECHNICAL CLAIM PROMOTION: BLOCKED
RELEASE GATE: NOT EVALUATED
```

The baseline remains review-first and evidence-limited.
