# MMI 3G High — Canonical Finding Registry

## Status

```text
WORKSTREAM=AUDIMMI-MMI3G-KB-RECONCILE-001
REGISTRY=AUDIMMI-MMI3G-FINDINGS-V1
AUTHORITY_ROLE=DOMAIN_KNOWLEDGE_AUTHORITY
STATUS=RECONCILED_CANDIDATE
DATE=2026-09-04
```

Machine-readable registry:

- [FINDING_REGISTRY_V1.json](FINDING_REGISTRY_V1.json)
- schema: [../../schemas/finding_registry.schema.json](../../schemas/finding_registry.schema.json)

## Reconciliation rule

A repository-level authority decision does not make every historical statement globally `CONFIRMED`.

This registry separates:

1. the exact observed or analyzed value;
2. the evidence state;
3. the claim status;
4. the variant/session scope;
5. the semantic boundary that must not be crossed.

Vehicle-specific Auto-Scan and DTC records are retained as `VEHICLE_SCOPED_REFERENCE` and are not promoted into global MMI semantics.

## Target HNAV findings

| Finding ID | Finding | Status | Scope boundary |
|---|---|---|---|
| `MMI3G-ID-5F-0001` | 5F identity: `8T1 035 664 F`, HW `8T1 035 664 B`, `H-BN-NA H52`, SW `0187` | `CONFIRMED` | historical diagnostic session only |
| `MMI3G-VAR-HNAV-0001` | HNAV identity tuple: `HNav_EU_K0257_5_D1`, Variant `9307`, RadioUnit `9471`, MU `0187`, Sample `d1` | `CONFIRMED` | displayed/transcribed target baseline only |
| `MMI3G-OBS-GREEN-0001` | Green Menu visible structure | `CONFIRMED` | visibility only; no function inference |
| `MMI3G-OBS-GREEN-0002` | `0x3ff60e / CONTROL_UNIT_HDD_D`; `0xc5500 / FUNCTION_RESTRICTION` displayed | observation `CONFIRMED`; interpretation `TO VERIFY` | root cause and HN+ relevance unresolved |
| `MMI3G-OBS-GREEN-0003` | NADPhone version displayed `$ERROR$` | observation `CONFIRMED`; interpretation `UNKNOWN` | cause/module/function unresolved |
| `MMI3G-DEP-GW-0001` | photographed Gateway Installation List: 57 visible addresses, 25 checked, 32 unchecked | observation `CONFIRMED`; interpretation `VARIANT` | checkbox state does not prove physical hardware |

### Important target separation

The target HNAV records support the exact observed baseline. They do not prove:

- `Variant 9307 == /etc/pci-3g_9307.cfg`;
- `Sample d1 == /etc/hwSample`;
- CPU/QNX/endianness of target HNav;
- coding byte/bit semantics;
- adaptation channel semantics not present in evidence;
- safe firmware/dataset/EEPROM/HDD/SWDL writes;
- HNAV-to-HN+ conversion feasibility or barrier location.

## HN+ build-specific findings

| Finding ID | Finding | Status | Scope |
|---|---|---|---|
| `MMI3G-VAR-HNPLUS-0001` | Main CPU `Renesas SH7785 / SH4A` | `CONFIRMED` | HN+ / MMI3GP `MU9411 K0942_4`, directory `41` only |
| `MMI3G-VAR-HNPLUS-0002` | QNX `6.3.2` | `CONFIRMED` | same source build only |
| `MMI3G-VAR-HNPLUS-0003` | analyzed executables: 32-bit little-endian SH4 | `CONFIRMED` | analyzed source image only |
| `MMI3G-VAR-HNPLUS-0004` | runtime evidence for `proc_scriptlauncher` and `copie_scr.sh` path | `VARIANT` | same reviewed runtime only |
| `MMI3G-VAR-HNPLUS-0005` | software-visible EIDE/HDD and SD-controller classes | `VARIANT` | same reviewed runtime only |

These HN+ findings must not be projected onto HNav solely by product-family similarity.

## Vehicle-scoped evidence references

The registry links, but does not absorb into global semantics:

- `HNAV-AUTOSCAN-20260512-001` — historical module identity/reachability context;
- `HNAV-DTC-20260512-001` — historical DTC observations.

Root causes remain unassigned unless a separate domain finding proves them.

## Remote Platform gap reconciliation

| Remote gap | Match | Decision |
|---|---|---|
| `GAP-006` — Variant 9307 filesystem identity | `PARTIAL_SUPPORT_ONLY` | remains `BLOCKED` |
| 5F `E1 -> E3` functional bit semantics | `NO_DIRECT_MATCH` | remains `TO_VERIFY` |
| J285 ch73 value `1` exact language mapping | `NO_DIRECT_MATCH` | remains `TO_VERIFY` |
| 0BK / AL551 fill/adaptation health thresholds | `OUT_OF_DOMAIN_NO_MATCH` | remains `TO_VERIFY` |
| Airbag B1024 physical root cause | `OUT_OF_SCOPE` | remains `DEFERRED` |

### GAP-006 rationale

`MMI3G-VAR-HNAV-0001` confirms the displayed value `Variant 9307` for the HNAV baseline. It does **not** provide filesystem co-attribution. The target `/etc/hwSample` was not captured and no direct relation between the displayed `Variant` field and `/etc/pci-3g_<ID>.cfg` is proven.

Therefore the Remote Platform must remain fail-closed for direct `9307 -> MMI3G_HIGH` mapping.

## Source precedence used

For the target HNAV baseline:

1. accepted target-unit diagnostic evidence;
2. owner-attested Red/Green Menu captures;
3. repository baseline reviews that explicitly supersede earlier re-capture blockers.

For HN+ build-specific findings:

1. build-specific firmware/runtime analysis recorded by the repository;
2. repository-reviewed source revisions and variant-aware source policy.

## No write authorization

This registry is knowledge normalization only. It does not authorize:

- coding/adaptation writes;
- Security Access;
- DTC clear;
- SWDL or firmware writes;
- dataset/EEPROM/HDD modifications;
- production database or deployment changes.
