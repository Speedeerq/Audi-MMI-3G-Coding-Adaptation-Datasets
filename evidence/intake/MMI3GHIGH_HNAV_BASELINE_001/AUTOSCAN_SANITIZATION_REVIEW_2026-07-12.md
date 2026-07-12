# Auto-Scan Sanitization and Provenance Review — 2026-07-12

## Review question

Can a prior user-supplied Auto-Scan be converted into a public-safe evidence record for the HNAV baseline without publishing sensitive identifiers or operational values?

## Sources reviewed

### Directly available raw source

```text
Najnowszy Autoscan.txt
capture: 2026-05-12 19:00:02
odometer: 265250 km
```

This file was directly readable during review and is the source for the sanitized extract, controller summary and DTC record.

### Report-only source

The existing EP-001 intake report describes a later full Auto-Scan at 268420 km. The raw `AutoScan.txt` from that package was not directly available as an independent file during this review.

Therefore:

- the 265250 km scan is the direct source used here,
- the 268420 km scan remains report-level `PARTIAL` evidence,
- facts from the two scans were not silently combined.

## Sanitization policy

### Removed

- full VIN and VINID,
- registration data,
- controller and subsystem serial numbers,
- coding strings,
- WSC/importer/equipment values,
- VCID and CVN values,
- unrelated Airbag, immobilizer and safety-module details,
- raw freeze-frame bitfields,
- private paths and raw file copies.

### Retained

- capture time and tool version,
- odometer and voltage context,
- reachability/status observations for 07/10/19/47/56/5F/6C,
- SW/HW/component identifiers for 19/47/56/5F/6C,
- 5F navigation/display/control-panel/CD database identifiers,
- DTC code, description, frequency and priority for 19/5F/6C.

## Validation

```text
JSON SYNTAX: PASS
autoscan_summary.schema.json: PASS
dtc_baseline.schema.json: PASS
controller_identification.schema.json: PASS
evidence_pack.schema.json: PASS
FULL VIN PRESENT: NO
VINID PRESENT: NO
SERIAL NUMBERS PRESENT: NO
CODING VALUES PRESENT: NO
WSC / VCID / CVN PRESENT: NO
PRIVATE PATH PRESENT: NO
```

## Provenance limitations

- No source checksum was available through the File Library reference.
- The public repository does not contain the raw scan.
- This is a historical scan, not a current pre-experiment snapshot.
- Low battery voltage makes the scan acceptable for read-only evidence only.
- The scan summary is not equivalent to a direct Gateway Installation List export.

## Decision

```text
PUBLIC-SAFE AUTOSCAN EXTRACT: ACCEPTABLE
5F DIAGNOSTIC IDENTITY: CAPTURED FOR 2026-05-12 SCAN
NETWORK CONTEXT: PARTIAL HISTORICAL EVIDENCE
DTC CONTEXT: PARTIAL HISTORICAL EVIDENCE
FRESH PRE-EXPERIMENT SCAN: STILL REQUIRED
TECHNICAL CLAIM PROMOTION: LIMITED TO DIRECT OBSERVATION
WRITE-CAPABLE EXPERIMENT ENTRY: BLOCKED
```
