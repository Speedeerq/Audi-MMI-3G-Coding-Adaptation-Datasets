# Hardware Matrix Audit — 2026-07-14

## Trigger

The prior research context contained hardware and runtime statements that could be read as global properties of BNav, HNav or HN+.

A public, build-specific MMI3GP analysis and runtime evidence instead show Renesas SH7785 / SH4A and QNX 6.3.2 for a specific HN+ build. Therefore a global statement such as `HN+ = Tegra 2 / ARM / QNX 6.5.0` is not accepted.

## Audit decision

```text
HARDWARE MATRIX AUDIT: FAIL AS GLOBAL MATRIX
VARIANT-AWARE RECLASSIFICATION: REQUIRED
HN+ GLOBAL HARDWARE ARCHITECTURE: VARIANT / TO VERIFY
```

## Confirmed build-specific reference

```text
family: HN+ / MMI3GP
source build: MU9411 K0942_4
source variant/sample directory: 41
firmware banner: Harman/Becker MMI3GP Build 9411 C1 D1-15515A
evidence type: firmware-derived analysis plus runtime process inventory
```

| Claim | Status | Scope |
|---|---|---|
| Main CPU is Renesas SH7785 / SH4A | `CONFIRMED` | source build only |
| QNX version is 6.3.2 | `CONFIRMED` | source build only |
| Executables are 32-bit little-endian SH4 | `CONFIRMED` | analyzed source image only |
| NVIDIA components provide graphics/media services | `CONFIRMED` | source build runtime/image |
| NVIDIA component is the main CPU | `REJECTED` | not supported by the source build |
| All HN+ units have identical hardware | `TO VERIFY` | global claim prohibited |

NVIDIA process or PCI evidence must be classified as graphics, display or media subsystem evidence unless a primary hardware source proves a different role.

## Product-family matrix

| Family / target | CPU / SoC | QNX | Endianness | Storage | Autorun / shell | UART |
|---|---|---|---|---|---|---|
| BNav global | `TO VERIFY` | `TO VERIFY` | `TO VERIFY` | `TO VERIFY` | `TO VERIFY` | `UNKNOWN` |
| HNav global | `TO VERIFY` | `TO VERIFY` | `TO VERIFY` | `TO VERIFY` | `VARIANT / TO VERIFY` | `UNKNOWN` |
| HN+ global | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` |
| HN+R global | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` |
| RNS-850 global | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` | `VARIANT / TO VERIFY` |
| HN+ MU9411 K0942_4 / 41 | SH7785 / SH4A — `CONFIRMED` | 6.3.2 — `CONFIRMED` | little-endian — `CONFIRMED` | software-visible EIDE/FPGA paths — `VARIANT` | runtime launcher evidence — `VARIANT` | runtime serial-driver configuration — `VARIANT` |
| Target HNav `8T1 035 664 F` / `HNav_EU_K0257_5_D1` | `TO VERIFY` | `TO VERIFY` | `TO VERIFY` | `TO VERIFY` | `TO VERIFY` | `UNKNOWN` |

## Target HNav status

```text
unit SW part: 8T1 035 664 F
unit HW identifier: 8T1 035 664 B
family: HNav / MMI 3G High
train: HNav_EU_K0257_5_D1
visible variant: 9307
visible MU: 0187
visible Sample: d1
actual /etc/hwSample: not captured
```

The following are not confirmed for the target:

- CPU or SoC,
- QNX version,
- executable endianness,
- HDD model, capacity, physical connector or controller path,
- SD-card controller and mount path,
- autorun process,
- script interpreter,
- availability of target-side commands used by the inventory script,
- UART pads, voltage, pinout, baud rate or boot-stage access.

## Storage and removable-media classification

Do not use `devb-umass` as proof of SD-card support. It is USB mass-storage evidence.

For each source, record independently:

```text
controller process:
physical medium:
block-device path:
filesystem:
mount point:
family/train/variant:
```

The reviewed HN+ 9411 runtime shows separate software-visible classes for EIDE/HDD and SD-card controllers. This remains `VARIANT` evidence outside that runtime.

## Autorun and interpreter classification

A reviewed HN+ 9411 runtime shows `proc_scriptlauncher` and a `copie_scr.sh` path. This supports a build-specific runtime observation.

It does not confirm:

- the same launcher on every HNav/HN+/HN+R train,
- the same removable-media mount path,
- identical encoding support,
- that `/bin/sh` and `/bin/ksh` are interchangeable,
- target compatibility of a payload.

## `metainfo2.txt`, IFS/LFS/EFS and HMI paths

- `metainfo2.txt` syntax and interpretation are package-family specific.
- MIB1/MIB2 signature rules must not be transferred automatically to MMI 3G.
- IFS, LFS and EFS roles must be tied to an image, partition and runtime mount point.
- HMI, splash and `.gph` paths require exact train and HMI-variant evidence.

## Tooling impact

```text
WINDOWS STAGING AND COLLECTION TOOLING: CONFIRMED BY LOCAL DRY RUN
TARGET-SIDE SCRIPT COMPATIBILITY: TO VERIFY
PHYSICAL TARGET EXECUTION: BLOCKED PENDING VARIANT VALIDATION
```

A successful host-side dry run proves package creation, overwrite refusal, structural validation, collection and repository cleanliness. It does not prove that the target QNX build provides the expected interpreter, commands or paths.

## Safety decision

```text
EXPLOITS / PATCHING / FLASH WRITES: BLOCKED
REGION CONVERSION: BLOCKED
EEPROM / NOR WRITES: BLOCKED
EFS / HMI BINARY REPLACEMENT: BLOCKED
.GPH DEPLOYMENT: TO VERIFY
FSC SIGNATURE-BYPASS DEPLOYMENT: BLOCKED
```

The next permitted work is documentation, source intake, build-specific offline analysis and read-only evidence collection after the target execution path is independently reviewed.
