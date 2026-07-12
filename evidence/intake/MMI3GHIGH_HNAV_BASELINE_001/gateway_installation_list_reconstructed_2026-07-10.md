# Gateway Installation List — Reconstructed Visual Intake

## Evidence identity

```text
Campaign: C-001 — Gateway / CAN / Installation List
Target baseline: HNAV-8T1035664F-K0257-D1
Source type: photographed VCDS Installation List screens
Source pages identified: 3
Reconstruction record date: 2026-07-10
Native VCDS text export attached: NO
Current evidence status: PARTIAL / E3 visual candidate
```

The source package identifies three photographed VCDS list pages:

```text
GatewayInstallationList_page_01.jpg
GatewayInstallationList_page_02.jpg
GatewayInstallationList_page_03.jpg
```

This file is a sanitized transcription of the existing screenshot intake. It is not a native VCDS export and does not prove physical presence or absence of hardware.

## Reconstructed list

| Address | VCDS label visible in source | Reconstructed state | Source page |
|---|---|---|---|
| `01` | Silnik | `CHECKED` | page 01 |
| `02` | Skrzynia biegów | `CHECKED` | page 01 |
| `03` | ABS/hamulce | `CHECKED` | page 01 |
| `04` | Kąt skrętu kierow. | `CHECKED` | page 01 |
| `05` | Zezwolenie startu | `CHECKED` | page 01 |
| `06` | Pamięć fotela pas. | `UNCHECKED` | page 01 |
| `07` | Jed.obsługi/wskaz | `UNCHECKED` | page 01 |
| `08` | Klimatyzacja | `CHECKED` | page 01 |
| `09` | Centr.zesp.elektr. | `CHECKED` | page 01 |
| `0E` | Media Player 1 | `UNCHECKED` | page 01 |
| `0F` | Radio cyfrowe | `UNCHECKED` | page 01 |
| `10` | Asyst.park./kierow. | `CHECKED` | page 01 |
| `11` | Silnik II | `UNCHECKED` | page 01 |
| `13` | Reg.dystansu | `UNCHECKED` | page 01 |
| `14` | Elek.zawieszenia | `UNCHECKED` | page 01 |
| `15` | Airbag | `CHECKED` | page 01 |
| `16` | Koło kierownicy | `CHECKED` | page 01 |
| `17` | Zest.wskaźników | `CHECKED` | page 01 |
| `18` | Ogrzew.pomocn. | `UNCHECKED` | page 01 |
| `19` | CAN Gateway | `CHECKED` | page 01 |
| `1B` | Aktywne kierow. | `UNCHECKED` | page 01 |
| `1E` | Media Player 2 | `UNCHECKED` | page 02 |
| `20` | Asyst.św.drogowych | `UNCHECKED` | page 02 |
| `22` | 4x4/AWD | `UNCHECKED` | page 02 |
| `26` | Elektr.ster.dach | `UNCHECKED` | page 02 |
| `27` | Jed.obsł./wsk.-tył | `UNCHECKED` | page 02 |
| `2E` | Media Player 3 | `UNCHECKED` | page 02 |
| `30` | Funkcja specjalna II | `UNCHECKED` | page 02 |
| `36` | Pamięć fotela kier. | `CHECKED` | page 02 |
| `37` | Nawigacja | `UNCHECKED` | page 02 |
| `3C` | Zmiana pas.ruchu | `CHECKED` | page 02 |
| `3D` | Funkcja specjalna | `UNCHECKED` | page 02 |
| `3E` | Media Player 4 | `UNCHECKED` | page 02 |
| `40` | Kompresor AC | `UNCHECKED` | page 02 |
| `42` | Elektr.drzwi kier. | `CHECKED` | page 02 |
| `44` | Wsp.kierownicy | `UNCHECKED` | pages 02/03 |
| `46` | Moduł komfortu | `CHECKED` | pages 02/03 |
| `47` | Sys.nagłaśniający | `CHECKED` | pages 02/03 |
| `51` | Napęd elektryczny | `UNCHECKED` | pages 02/03 |
| `52` | Elektr.drzwi pas. | `CHECKED` | pages 02/03 |
| `53` | Hamulec postojowy | `CHECKED` | pages 02/03 |
| `55` | Zasięg świateł | `CHECKED` | pages 02/03 |
| `56` | Radio | `CHECKED` | pages 02/03 |
| `57` | Tuner TV | `UNCHECKED` | page 03 |
| `5C` | Utrzym.pas.ruchu | `UNCHECKED` | page 03 |
| `5F` | Elektr.informacji | `CHECKED` | page 03 |
| `62` | Drzwi tylne lewe | `CHECKED` | page 03 |
| `65` | Ciśn.w oponach | `UNCHECKED` | page 03 |
| `67` | Sterow.głosem | `UNCHECKED` | page 03 |
| `69` | Przyczepa | `UNCHECKED` | page 03 |
| `6B` | Aerodynamika | `UNCHECKED` | page 03 |
| `6C` | Kamera wsteczna | `CHECKED` | page 03 |
| `6D` | Elektr.bagażnika | `UNCHECKED` | page 03 |
| `72` | Drzwi tylne prawe | `CHECKED` | page 03 |
| `77` | Telefon | `UNCHECKED` | page 03 |
| `7F` | Elektr.informacji II | `UNCHECKED` | page 03 |
| `8C` | Akumulator wys.nap. | `UNCHECKED` | page 03 |

## Counts

```text
visible addresses transcribed: 57
CHECKED: 25
UNCHECKED: 32
```

## Infotainment and HNAV-relevant subset

### Checked in reconstructed list

```text
10 — Parking/driver assistance
19 — CAN Gateway
47 — Sound System
55 — Headlight Range
56 — Radio
5F — Information Electronics
6C — Rear View Camera
```

### Unchecked in reconstructed list

```text
07 — Control Head
0E — Media Player 1
37 — Navigation
57 — TV Tuner
5C — Lane Assist
65 — Tire Pressure
67 — Voice Control
69 — Trailer
6D — Trunk Electronics
77 — Telephone
7F — Information Electronics II
```

These states describe only the photographed Gateway Installation List state. They must not be interpreted as proof of physical hardware presence, absence, operability, coding correctness or current vehicle state.

## Cross-check with historical Auto-Scan

The historical Auto-Scan evidence already in the package recorded:

- `47`, `56`, `5F` and `6C` as reachable,
- `65`, `67` and `77` as not reachable,
- historical communication DTC context involving telephone/voice-control related addresses.

The reconstructed list is compatible with that historical context, but it does not replace:

- a current Auto-Scan,
- a direct current Installation List capture,
- current DTC-before evidence,
- a physical equipment inventory.

## Safety boundary

No Installation List state may be changed from this file.

Do not:

- check or uncheck any address,
- click `Save`, `Write Coding` or an equivalent write action,
- infer that a DTC means a checkbox must be changed,
- infer that `UNCHECKED` means physically impossible or absent,
- use this list as a retrofit coding prescription.

## Decision

```text
SCREENSHOT-BASED INSTALLATION LIST: ACCEPTABLE AS PARTIAL VISUAL EVIDENCE
NATIVE/DIRECT EXPORT: STILL MISSING
CURRENT LIST STATE: NOT CAPTURED
TASK CLOSURE: NOT AUTHORIZED
WRITE ACTIONS: NOT AUTHORIZED
```
