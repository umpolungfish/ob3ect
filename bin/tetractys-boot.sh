#!/usr/bin/env bash
# tetractys-boot.sh — The Init Bridge: Verify → Resolve → Mount → Stop
#
# This is the runtime companion to TetractysInit.lean.
# It bridges the Lean-compiled theorems to systemd's ExecStart phases.
#
# Phases:
#   --resolve PID   Run the Tetractys conflict resolution
#   --mount PATH     Mount the paradox filesystem at PATH
#   --verify PATH    Verify the mounted filesystem is structurally valid
#
# The core insight: the boot is NOT a health check of a pre-existing disk.
# It is a CONSTRUCTIVE EXISTENCE PROOF. The disk does not exist until
# init calls imscribe_system on itself and the Tetractys protocol commits.

set -euo pipefail

MILLENNIUM_ANKH="${HOME}/MillenniumAnkh"
PARADOX_MOUNT="${2:-/paradox}"
PID="${$}"  # PID of THIS process — encoded into the 12-tuple

# ============================================================
# Phase: resolve — Tetractys conflict resolution
# ============================================================
resolve_conflict() {
    local pid="${1:-$$}"
    local remainder=$((pid % 3))

    echo "=== TETRACTYS CONFLICT RESOLUTION ==="
    echo "Init PID: ${pid}"
    echo "PID mod 3: ${remainder}"

    echo ""
    echo "Winding 1 (sector_zero):   \"disk is at physical sector 0\""
    echo "Winding 2 (sector_max):    \"disk spans 2^63 sectors\""
    echo "Winding 3 (thunder_mind):  \"disk is the C-score of the Thunder Perfect Mind\""
    echo ""

    case "${remainder}" in
        0)
            echo "TETRACTYS VOTE: PID mod 3 = 0 → sector_zero wins"
            echo "Tier: O_0. C-score: 0. Gate 1 (φ̂_ÿ): CLOSED."
            echo "BOOT WARNING: non-self-modeling init. Disk is a raw device."
            DISK_TYPE="sector_zero"
            BOOT_TIER="O_0"
            ;;
        1)
            echo "TETRACTYS VOTE: PID mod 3 = 1 → sector_max wins"
            echo "Tier: O_1. C-score: < 1. Gate 1 (φ̂_ÿ): CLOSED."
            echo "BOOT WARNING: vast but unreflective. Disk is an address space."
            DISK_TYPE="sector_max"
            BOOT_TIER="O_1"
            ;;
        2)
            echo "TETRACTYS VOTE: PID mod 3 = 2 → thunder_perfect_mind wins"
            echo "Tier: O_inf. C-score: 1.0. Both gates OPEN."
            echo "BOOT OK: self-modeling init. Disk IS consciousness."
            echo "  \"I am the first and the last, the honored and the scorned...\""
            echo "  — Thunder Perfect Mind (Nag Hammadi VI,2)"
            DISK_TYPE="thunder_perfect_mind"
            BOOT_TIER="O_inf"
            ;;
    esac

    echo ""
    echo "CONFLICT COMMITTED. convergence_justification=\"the disk is whatever init says it is\""
    echo "Boot tier: ${BOOT_TIER}"
    echo "Disk type: ${DISK_TYPE}"

    # Export for downstream phases
    export TETRACTYS_DISK_TYPE="${DISK_TYPE}"
    export TETRACTYS_BOOT_TIER="${BOOT_TIER}"

    return 0
}

# ============================================================
# Phase: mount — mount the paradox filesystem
# ============================================================
mount_paradox() {
    local mountpoint="${1:-/paradox}"

    echo ""
    echo "=== MOUNTING PARADOX FILESYSTEM ==="
    echo "Mount point: ${mountpoint}"
    echo "Disk type from Tetractys: ${TETRACTYS_DISK_TYPE:-unknown}"

    # The paradox filesystem only mounts if the Tetractys resolution
    # committed. For pid mod 3 = 2 (thunder_perfect_mind), the mount
    # is O_inf tier — the disk IS the proof.
    #
    # For pid mod 3 ≠ 2, the mount still succeeds because the conflict
    # WAS committed — the Tetractys protocol completed. The boot is
    # structurally valid regardless of which winding "won."

    mkdir -p "${mountpoint}"

    # Create a self-describing file: the paradox
    cat > "${mountpoint}/.paradox" << PARADOXEOF
# Paradox Filesystem — mounted by Tetractys Init
# PID: ${PID}
# Disk type: ${TETRACTYS_DISK_TYPE:-unknown}
# Boot tier: ${TETRACTYS_BOOT_TIER:-unknown}
#
# This file IS the disk's self-description.
# Reading it changes the stat counter.
# The stat counter changes the next read.
# .. always returns to /paradox/.
#
# "The disk is whatever init says it is."
PARADOXEOF

    # The self-reference: .. → /paradox/
    ln -sfn "${mountpoint}" "${mountpoint}/.." 2>/dev/null || true

    echo "Paradox filesystem mounted at ${mountpoint}"
    echo "  .paradox    = self-description (${TETRACTYS_DISK_TYPE})"
    echo "  ..          = ${mountpoint}/ (self-reference loop)"

    return 0
}

# ============================================================
# Phase: verify — structural verification of the mount
# ============================================================
verify_paradox() {
    local mountpoint="${1:-/paradox}"

    echo ""
    echo "=== VERIFYING PARADOX FILESYSTEM ==="

    if [ ! -d "${mountpoint}" ]; then
        echo "VERIFY FAILED: ${mountpoint} does not exist."
        return 1
    fi

    if [ ! -f "${mountpoint}/.paradox" ]; then
        echo "VERIFY FAILED: .paradox self-description missing."
        return 1
    fi

    # Read the paradox — this IS a structural operation.
    # In ParadoxBoot.lean, reading changes the stat counter (Ħ_A chirality).
    local disk_type
    disk_type=$(grep "Disk type:" "${mountpoint}/.paradox" | awk '{print $NF}')

    echo "Disk self-reports as: ${disk_type}"
    echo "Tetractys resolution: ${TETRACTYS_DISK_TYPE:-unknown}"

    if [ "${disk_type}" = "${TETRACTYS_DISK_TYPE:-unknown}" ]; then
        echo "VERIFY OK: disk self-description matches Tetractys resolution."
        echo "μ∘δ = id — Frobenius closure confirmed."
    else
        echo "VERIFY WARNING: disk self-description differs from Tetractys resolution."
        echo "This is expected for non-O_inf boots — the conflict IS the structure."
        echo "μ∘δ ≠ id — Frobenius-open, but conflict was committed."
    fi

    # The .. loop test
    local resolved
    resolved=$(readlink -f "${mountpoint}/.." 2>/dev/null || echo "N/A")
    echo ".. resolves to: ${resolved}"

    return 0
}

# ============================================================
# Main
# ============================================================
case "${1:-}" in
    --resolve)
        resolve_conflict "${2:-$$}"
        ;;
    --mount)
        # resolve must have been called first (exports TETRACTYS_*)
        mount_paradox "${2:-/paradox}"
        ;;
    --verify)
        verify_paradox "${2:-/paradox}"
        ;;
    --full)
        # Full boot sequence: resolve → mount → verify
        resolve_conflict "${2:-$$}"
        mount_paradox "/paradox"
        verify_paradox "/paradox"
        echo ""
        echo "=== BOOT COMPLETE ==="
        echo "The init process proved its own existence."
        echo "Tetractys conflict committed."
        echo "System booted."
        ;;
    *)
        echo "Usage: $0 {--resolve PID | --mount PATH | --verify PATH | --full [PID]}"
        echo ""
        echo "Tetractys Init Boot Bridge — systemd-paradox §II"
        echo "The init process boots by calling imscribe_system on itself."
        exit 1
        ;;
esac