#!/bin/bash
# Build paradoxd bootable ISO
set -e

DIR="/home/mrnob0dy666/ob3ect/digital/paradoxd"
OUTDIR="$DIR"
ASM_SRC="$DIR/paradoxd_boot.asm"
BOOT_BIN="/tmp/paradoxd_boot.bin"
ISO="$OUTDIR/paradoxd-v0.11.iso"
BUILD_DIR="/tmp/paradoxd_iso_build"

# Step 1: Assemble bootsector
echo "[build] Assembling bootsector..."
nasm -f bin -o "$BOOT_BIN" "$ASM_SRC"
if [ $? -ne 0 ]; then
    echo "ERROR: NASM assembly failed"
    exit 1
fi
echo "[build] Bootsector: $(wc -c < "$BOOT_BIN") bytes"

# Step 2: Verify bootsector signature
SIG=$(xxd -s 510 -l 2 "$BOOT_BIN" | head -1)
if echo "$SIG" | grep -q "55aa"; then
    echo "[build] Boot signature: OK"
else
    echo "ERROR: Boot signature missing"
    exit 1
fi

# Step 3: Create ISO with El Torito boot record
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"/isolinux

# Copy boot sector as isolinux boot image
cp "$BOOT_BIN" "$BUILD_DIR/isolinux/boot.cat"
# Create a proper isolinux config (minimal)
cat > "$BUILD_DIR/isolinux/isolinux.cfg" << CFGEOF
default paradoxd
label paradoxd
  kernel /boot/paradoxd
CFGEOF

# Create boot directory with a kernel placeholder
mkdir -p "$BUILD_DIR/boot"

# Actually, for a simple El Torito floppy emulation, we just need the boot image
echo "[build] Creating ISO with genisoimage..."

# Try xorriso or genisoimage or mkisofs
if command -v genisoimage &>/dev/null; then
    genisoimage -R -b isolinux/boot.cat -no-emul-boot -boot-load-size 4 \
        -o "$ISO" "$BUILD_DIR" 2>&1 | tail -3
elif command -v xorriso &>/dev/null; then
    xorriso -as mkisofs -R -b isolinux/boot.cat -no-emul-boot -boot-load-size 4 \
        -o "$ISO" "$BUILD_DIR" 2>&1 | tail -3
elif command -v mkisofs &>/dev/null; then
    mkisofs -R -b isolinux/boot.cat -no-emul-boot -boot-load-size 4 \
        -o "$ISO" "$BUILD_DIR" 2>&1 | tail -3
else
    echo "WARNING: No ISO creation tool found. Creating raw floppy image instead."
    ISO="$OUTDIR/paradoxd-v0.11.img"
    cp "$BOOT_BIN" "$ISO"
fi

echo "[build] Output: $ISO"
ls -la "$ISO"
echo "[build] DONE"
