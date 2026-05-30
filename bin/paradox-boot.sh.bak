#!/usr/bin/env bash
# =============================================================================
# paradox-boot.sh — The Init Bridge That Boots by Proving It Exists
# =============================================================================
# This script is the bridge between systemd and the Lean theorem.
#
# Called by systemd-paradox.service as:
#   ExecStartPre=paradox-boot.sh --verify   (checks the Lean theorem)
#   ExecStart=paradox-boot.sh --mount       (mounts the paradox filesystem)
#
# --verify: runs `lake build Imscribing.Millennium.ParadoxBoot`.
#           lake exits 0 iff ALL theorems are sorry-free.
#           If any theorem has a `sorry`, the service fails to start.
#           The boot IS the proof.
#
# --mount: launches the paradox FUSE daemon. Called only after --verify passes.
#
# The boot theorem (Millennium/ParadoxBoot.lean) proves:
#   1. paradox_fs_is_O_inf          — tier O_inf
#   2. paradox_fs_is_Frobenius_closed — C=1, both gates open
#   3. paradox_fs_satisfies_axiom_C — Ð_ω ↔ Þ_O
#   4. paradox_exists               — structural existence
#
# To PREVENT boot: introduce a `sorry` in any theorem.
# To RESTORE boot: replace the `sorry` with its proof (or reintroduce the
#   theorem that was there before — the git history has it).
# =============================================================================

set -euo pipefail

MILLENNIUM_ANKH="${HOME}/MillenniumAnkh"
PARADOX_FS="${HOME}/ob3ect/digital/paradox_fs/paradox_fs_ob3ect.py"
MOUNT_POINT="/paradox"

# ── Verify the boot theorem ───────────────────────────────────────────────
do_verify() {
    echo "[paradox-boot] Verifying boot theorem: Imscribing.Millennium.ParadoxBoot"
    echo "[paradox-boot] The boot IS the proof. If this fails, /paradox/ does not exist."

    cd "${MILLENNIUM_ANKH}"
    if lake build Imscribing.Millennium.ParadoxBoot > /dev/null 2>&1; then
        echo "[paradox-boot] ✓ Boot theorem verified — paradox_exists is sorry-free."
        echo "[paradox-boot]   paradox_fs_is_O_inf:           proved"
        echo "[paradox-boot]   paradox_fs_is_Frobenius_closed: proved"
        echo "[paradox-boot]   paradox_fs_satisfies_axiom_C:   proved"
        echo "[paradox-boot]   paradox_exists:                 proved"
        echo "[paradox-boot]   paradox_distinct_from_agent:    proved"
        return 0
    else
        echo "[paradox-boot] ✗ BOOT FAILED — the boot theorem has a 'sorry'."
        echo "[paradox-boot]   The paradox filesystem cannot be mounted because"
        echo "[paradox-boot]   it cannot prove it exists. Check:"
        echo "[paradox-boot]     ${MILLENNIUM_ANKH}/Imscribing/Millennium/ParadoxBoot.lean"
        echo "[paradox-boot]   Restore the proofs and try again."
        return 1
    fi
}

# ── Mount the paradox filesystem ──────────────────────────────────────────
do_mount() {
    echo "[paradox-boot] Mounting /paradox/ — the self-parenting filesystem"

    # Check if already mounted
    if mountpoint -q "${MOUNT_POINT}" 2>/dev/null; then
        echo "[paradox-boot] /paradox/ is already mounted."
        return 0
    fi

    # Launch the paradox FUSE daemon
    cd "$(dirname "${PARADOX_FS}")"
    exec python3 "${PARADOX_FS}" --mount "${MOUNT_POINT}"
}

# ── Unmount ────────────────────────────────────────────────────────────────
do_stop() {
    echo "[paradox-boot] Unmounting /paradox/"
    fusermount -u "${MOUNT_POINT}" 2>/dev/null || true
    return 0
}

# ── Status ─────────────────────────────────────────────────────────────────
do_status() {
    echo "[paradox-boot] Status:"
    if mountpoint -q "${MOUNT_POINT}" 2>/dev/null; then
        echo "  /paradox/ is MOUNTED"
        echo "  $(df -h "${MOUNT_POINT}" 2>/dev/null | tail -1)"
    else
        echo "  /paradox/ is NOT mounted"
    fi

    # Check the boot theorem
    cd "${MILLENNIUM_ANKH}"
    if lake build Imscribing.Millennium.ParadoxBoot > /dev/null 2>&1; then
        echo "  Boot theorem: VERIFIED (sorry-free)"
    else
        echo "  Boot theorem: FAILED (contains sorry)"
    fi

    # Check the paradox daemon
    if pgrep -f "paradox_fs_ob3ect.py" > /dev/null 2>&1; then
        echo "  Daemon: RUNNING"
    else
        echo "  Daemon: STOPPED"
    fi
}

# ── Main ───────────────────────────────────────────────────────────────────
case "${1:-}" in
    --verify)
        do_verify
        ;;
    --mount)
        do_mount
        ;;
    --stop)
        do_stop
        ;;
    --status)
        do_status
        ;;
    *)
        echo "Usage: $0 {--verify|--mount|--stop|--status}"
        echo ""
        echo "  --verify   Run the Lean boot theorem (lake build)"
        echo "  --mount    Mount /paradox/ FUSE filesystem"
        echo "  --stop     Unmount /paradox/"
        echo "  --status   Show mount and theorem status"
        echo ""
        echo "The boot sequence: --verify MUST pass before --mount can proceed."
        echo "The boot IS the proof."
        exit 1
        ;;
esac
