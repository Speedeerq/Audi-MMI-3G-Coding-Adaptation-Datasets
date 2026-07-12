#!/bin/ksh
# Safe read-only HNAV identity and storage inventory.
#
# Writes only to the supplied SD-card path. It does not change coding,
# adaptations, persistence, firmware, mounts or HDD contents.
#
# Identity/storage paths and the general report approach are informed by
# dspl1236/MMI3G-Toolkit variant-dump (MIT License), reviewed at revision
# 7b25fa945e72343474b5f184aa12d0ea06162c8f.

SDPATH="${1:-${0%/*}}"

if command -v getTime >/dev/null 2>&1; then
    EPOCH="$(getTime 2>/dev/null)"
else
    EPOCH=""
fi

if [ -n "${EPOCH}" ]; then
    TS="epoch-${EPOCH}"
else
    TS="$(date +%Y%m%d-%H%M%S 2>/dev/null)"
    [ -n "${TS}" ] || TS="unknown-time"
fi

OUTROOT="${SDPATH}/var"
OUTBASE="${OUTROOT}/hnav-recovery"
OUTDIR="${OUTBASE}/${TS}"
REPORT="${OUTDIR}/hnav-read-only-inventory.txt"

mkdir -p "${OUTROOT}" "${OUTBASE}" "${OUTDIR}" 2>/dev/null

if [ ! -d "${OUTDIR}" ]; then
    echo "ERROR: Cannot create SD output directory: ${OUTDIR}"
    exit 1
fi

file_value() {
    label="$1"
    path="$2"
    echo "--- ${label} ---"
    if [ -f "${path}" ]; then
        cat "${path}" 2>/dev/null
    else
        echo "NOT PRESENT"
    fi
    echo ""
}

file_cksum() {
    path="$1"
    if [ -f "${path}" ]; then
        cksum "${path}" 2>/dev/null
    fi
}

{
    echo "################################################################"
    echo "# HNAV SAFE READ-ONLY RECOVERY INVENTORY"
    echo "# Generated: $(date 2>/dev/null)"
    echo "# getTime epoch: ${EPOCH:-n/a}"
    echo "# Output: ${OUTDIR}"
    echo "################################################################"
    echo ""

    echo "MODE: READ ONLY"
    echo "UNIT WRITES: NONE"
    echo "OUTPUT TARGET: SD CARD ONLY"
    echo ""

    echo "================================================================"
    echo "1. MAIN UNIT IDENTITY"
    echo "================================================================"
    file_value "Software train" "/dev/shmem/sw_trainname.txt"
    file_value "MainUnit version" "/etc/version/MainUnit-version.txt"
    file_value "Actual hwSample" "/etc/hwSample"

    echo "--- pci-3g configuration files ---"
    PCI_FOUND="no"
    for f in /etc/pci-3g_*.cfg; do
        if [ -f "$f" ]; then
            PCI_FOUND="yes"
            echo "$f"
        fi
    done
    [ "$PCI_FOUND" = "yes" ] || echo "NONE FOUND"
    echo ""

    file_value "HMI type" "/etc/hmi_type.txt"
    file_value "HMI country/region" "/etc/hmi_country.txt"

    echo "--- mmi3g-srv-starter VariantName ---"
    if [ -f /etc/mmi3g-srv-starter.cfg ]; then
        sed -n 's,^<VariantName>,,;s,</VariantName>.*$,,p' /etc/mmi3g-srv-starter.cfg 2>/dev/null | head -1
    else
        echo "NOT PRESENT"
    fi
    echo ""

    echo "--- selected identity-file checksums (POSIX cksum) ---"
    file_cksum /dev/shmem/sw_trainname.txt
    file_cksum /etc/version/MainUnit-version.txt
    file_cksum /etc/hwSample
    file_cksum /etc/hmi_type.txt
    file_cksum /etc/hmi_country.txt
    file_cksum /etc/mmi3g-srv-starter.cfg
    echo ""

    echo "================================================================"
    echo "2. QNX / RUNTIME IDENTITY"
    echo "================================================================"
    uname -a 2>/dev/null
    echo ""
    pidin info 2>/dev/null
    echo ""

    echo "================================================================"
    echo "3. HDD / STORAGE INVENTORY"
    echo "================================================================"
    echo "--- block devices ---"
    ls -la /dev/hd* /dev/fs* 2>/dev/null
    echo ""

    if [ -e /dev/hd0 ]; then
        echo "--- /dev/hd0 info ---"
        fdisk /dev/hd0 info 2>/dev/null
        echo ""
        echo "--- /dev/hd0 partition table ---"
        fdisk /dev/hd0 show 2>/dev/null
        echo ""
    else
        echo "/dev/hd0 NOT PRESENT"
        echo ""
    fi

    echo "--- mount table ---"
    mount 2>/dev/null
    echo ""

    echo "--- disk usage ---"
    df -k -P 2>/dev/null
    echo ""

    echo "================================================================"
    echo "4. NAVIGATION / FSC INVENTORY"
    echo "================================================================"
    echo "FSC CONTENTS ARE NOT COPIED. FILENAMES/SIZES ONLY."
    for d in /mnt/efs-persist/FSC /HBpersistence/FSC; do
        echo "--- ${d} ---"
        if [ -d "${d}" ]; then
            ls -la "${d}" 2>/dev/null
        else
            echo "NOT PRESENT"
        fi
        echo ""
    done

    echo "--- navigation DB identity files ---"
    for f in /mnt/nav/db/DBInfo.txt /mnt/nav/db/Update.txt; do
        if [ -f "$f" ]; then
            echo "FILE: $f"
            sed -n '1,40p' "$f" 2>/dev/null
            echo "CKSUM:"
            cksum "$f" 2>/dev/null
        else
            echo "NOT PRESENT: $f"
        fi
        echo ""
    done

    echo "================================================================"
    echo "5. PERSISTENCE DIRECTORY INVENTORY"
    echo "================================================================"
    echo "FILE CONTENTS ARE NOT COPIED. TOP-LEVEL LISTING ONLY."
    for d in /HBpersistence /mnt/efs-persist /mnt/persistence; do
        echo "--- ${d} ---"
        if [ -d "${d}" ]; then
            ls -la "${d}" 2>/dev/null
        else
            echo "NOT PRESENT"
        fi
        echo ""
    done

    echo "================================================================"
    echo "6. SENSITIVE-DATA EXCLUSIONS"
    echo "================================================================"
    echo "NOT READ OR COPIED BY THIS SCRIPT:"
    echo "- VIN file content"
    echo "- /etc/passwd or /etc/shadow"
    echo "- Wi-Fi/Audi Connect credentials"
    echo "- Bluetooth key/pairing databases"
    echo "- FSC file contents"
    echo "- coding or adaptation values"
    echo "- private keys"
    echo ""

    echo "################################################################"
    echo "# Inventory complete"
    echo "# Unit writes: NONE"
    echo "# Keep raw output PRIVATE and create a sanitized summary."
    echo "################################################################"
} > "${REPORT}" 2>&1

sync

echo "Read-only HNAV inventory complete."
echo "Report: ${REPORT}"
exit 0
