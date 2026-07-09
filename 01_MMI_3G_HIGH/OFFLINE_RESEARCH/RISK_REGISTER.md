# MMI 3G High — Risk Register

## Purpose

This register tracks research risks for MMI 3G High.

Risk classification controls what evidence is required before testing or publishing.

## Risk levels

| Risk | Meaning | Minimum requirement |
|---|---|---|
| LOW | UI/read-only observation or reversible cosmetic setting | Evidence + rollback note |
| MEDIUM | Menu/source behavior, minor feature visibility | Baseline + DTC before/after + rollback |
| HIGH | Gateway/MOST/audio/camera/light dependencies | Full baseline + controlled test + rollback |
| CRITICAL | Dataset/parameterization/firmware/boot/EEPROM-like actions | Verified source + backup + recovery path |

## Risk register

| Risk ID | Area | Risk | Impact | Minimum evidence | Status |
|---|---|---|---|---|---|
| R-HIGH-001 | Long Coding | Wrong byte/bit meaning | Feature malfunction or DTC | Coding before/after, DTC, rollback | 🟠 TO VERIFY |
| R-HIGH-002 | Adaptations | Wrong channel/value effect | Feature malfunction or persistence issue | Adaptation map, DTC, rollback | 🟠 TO VERIFY |
| R-HIGH-003 | Security Access | Unverified login use | Enables unsafe operation or misleading documentation | Operation-specific evidence | 🔴 BLOCKED |
| R-HIGH-004 | Dataset | Wrong dataset/parameterization | Bricking, feature loss, recovery complexity | Source, checksum, backup, recovery | 🔴 BLOCKED |
| R-HIGH-005 | Gateway | Wrong installation list change | Lost module communication, DTC cascade | Gateway baseline, single change, rollback | 🔴 BLOCKED |
| R-HIGH-006 | MOST/audio | Wrong audio/MOST setting | No sound, MOST faults, amplifier issues | MOST baseline, DTC, rollback | 🔴 BLOCKED |
| R-HIGH-007 | CAR menu | UI visible but non-functional | Misleading documentation | UI evidence + module evidence | 🟠 TO VERIFY |
| R-HIGH-008 | Light/BCM | Wrong light behavior | Legal/safety risk, bulb errors | BCM/Gateway baseline, DTC, rollback | 🔴 BLOCKED |
| R-HIGH-009 | Green Menu | Unknown option changed | Hidden side effects | Read-only mapping first | 🔴 BLOCKED |
| R-HIGH-010 | Red Menu | Engineering/update action triggered | Firmware/update risk | Read-only only | 🔴 BLOCKED |

## Risk escalation rules

| Condition | Escalate to |
|---|---|
| Affects Gateway, MOST, audio amplifier, camera, lights | HIGH |
| Affects firmware/update/boot/dataset/parameterization | CRITICAL |
| No rollback path | HIGH or CRITICAL |
| No DTC baseline | At least MEDIUM |
| No original coding/adaptation value | At least HIGH for write tests |
| Legal/safety vehicle behavior involved | HIGH or CRITICAL |

## Testing permission by risk

| Risk | Testing allowed now? | Reason |
|---|---:|---|
| LOW | Limited read-only only | No full baseline yet |
| MEDIUM | No | Needs baseline/DTC/rollback |
| HIGH | No | Needs complete baseline and controlled plan |
| CRITICAL | No | Needs source, backup and recovery path |

## Release rule

No entry with `HIGH` or `CRITICAL` risk can be published as instruction until it passes the release gate.
