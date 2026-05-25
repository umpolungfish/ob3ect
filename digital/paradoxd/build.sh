#!/usr/bin/env bash
set -euo pipefail
# ───────────────────────────────────────────────────────────────────
# paradoxd v0.11 ISO builder
# Builds a bootable ISO that loads the tier-ladder init via GRUB2.
# Output: paradoxd-v0.11.iso
# ───────────────────────────────────────────────────────────────────

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BUILD_DIR="$SCRIPT_DIR/build"
ISO_DIR="$BUILD_DIR/iso"
OUT_ISO="$SCRIPT_DIR/paradoxd-v0.11.iso"

echo "=== paradoxd v0.11 ISO Builder ==="
echo "Source: $SCRIPT_DIR"
echo

# ── Step 1: Clean and prepare ─────────────────────────────────────
rm -rf "$BUILD_DIR"
mkdir -p "$ISO_DIR/boot/grub"

# ── Step 2: Assemble multiboot trampoline (32-bit) ─────────────────
echo "[1/5] Assembling multiboot header..."
nasm -f elf32 "$SCRIPT_DIR/multiboot.asm" -o "$BUILD_DIR/multiboot.o"

# ── Step 3: Compile kernel (32-bit, freestanding) ──────────────────
echo "[2/5] Compiling paradoxd kernel..."
gcc -m32 -c -ffreestanding -nostdlib -fno-pic -fno-pie \
    -fno-stack-protector -mno-red-zone -O2 -Wall \
    "$SCRIPT_DIR/kernel.c" -o "$BUILD_DIR/kernel.o"

# ── Step 4: Link ELF ──────────────────────────────────────────────
echo "[3/5] Linking paradoxd-v0.11.elf..."
ld -m elf_i386 -T "$SCRIPT_DIR/linker.ld" \
    "$BUILD_DIR/multiboot.o" "$BUILD_DIR/kernel.o" \
    -o "$ISO_DIR/boot/paradoxd-v0.11.elf"

echo "    ELF size: $(stat -c%s "$ISO_DIR/boot/paradoxd-v0.11.elf") bytes"

# ── Step 5: GRUB config ───────────────────────────────────────────
echo "[4/5] Writing GRUB config..."
cat > "$ISO_DIR/boot/grub/grub.cfg" << 'GRUBCFG'
set timeout=0
set default=0

menuentry "paradoxd v0.11 — Tier-Ladder Boot (O_0 -> O_1 -> O_2 -> O_inf)" {
    multiboot2 /boot/paradoxd-v0.11.elf
    boot
}
GRUBCFG

# ── Step 6: Build ISO with grub-mkrescue ──────────────────────────
echo "[5/5] Building ISO: $OUT_ISO..."
grub-mkrescue -o "$OUT_ISO" "$ISO_DIR" 2>&1 | tail -1

echo
echo "=== Build Complete ==="
echo "ISO: $OUT_ISO ($(stat -c%s "$OUT_ISO") bytes)"
echo
echo "Test with:"
echo "  qemu-system-x86_64 -cdrom $OUT_ISO -nographic"
echo
