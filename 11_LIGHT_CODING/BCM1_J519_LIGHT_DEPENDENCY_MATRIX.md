# BCM1 / J519 — Light Dependency Matrix

## Purpose

This file records evidence requirements for studying relationships between MMI 3G High, BCM/J519 and lighting-related menu visibility.

No byte, bit, channel or operational value is documented here.

## Matrix

| Area | Possible related modules | Evidence required | Risk | Status |
|---|---|---|---|---|
| BCM/J519 identity | 09, 19 | Auto-Scan, controller identity, software context | HIGH | 🟠 TO VERIFY |
| DRL menu context | 5F, 09, 19 | MMI screen evidence, BCM context, DTC baseline | HIGH | 🟠 TO VERIFY |
| CH/LH menu context | 5F, 09, 46, 19 | MMI screen evidence, body module context, DTC baseline | HIGH | 🟠 TO VERIFY |
| Front lamp equipment context | 09, 55, 17, 19 | equipment context, module identity, DTC baseline | HIGH | 🟠 TO VERIFY |
| Rear lamp equipment context | 09, 17, 19 | equipment context, module identity, DTC baseline | HIGH | 🟠 TO VERIFY |
| Market/equipment difference context | 09, 55, 17, 19, 5F | vehicle context, market, module identity | HIGH | 🔴 HYPOTHESIS |
| Warning/reporting context | 09, 17, 5F | DTC context, cluster/MMI evidence | HIGH | 🟠 TO VERIFY |

## Evidence checklist

| Evidence item | Required before claim? | Status |
|---|---:|---|
| Auto-Scan | Yes | 🟠 TO CAPTURE |
| BCM/J519 controller ID | Yes | 🟠 TO CAPTURE |
| Headlight range module context if present | Yes for related claims | 🟠 TO CAPTURE |
| MMI CAR menu photos | Yes for menu visibility | 🟠 TO CAPTURE |
| DTC baseline | Yes for fault context | 🟠 TO CAPTURE |
| Equipment/market notes | Yes for variant notes | 🟠 TO CAPTURE |

## Current decision

This matrix is for evidence planning only.
