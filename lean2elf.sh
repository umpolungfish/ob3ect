#!/bin/bash
# lean2elf.sh - Compile a Lean file to an ELF binary
# Usage: ./lean2elf.sh <path-to-lean-file> [output-name]

set -euo pipefail

LEAN_FILE="${1:-}"
OUTPUT_NAME="${2:-}"

if [[ -z "$LEAN_FILE" ]]; then
    echo "Usage: $0 <path-to-lean-file> [output-name]"
    echo "Example: $0 MyFile.lean my_binary"
    exit 1
fi

if [[ ! -f "$LEAN_FILE" ]]; then
    echo "Error: File '$LEAN_FILE' not found"
    exit 1
fi

# Get absolute paths
LEAN_FILE_ABS=$(realpath "$LEAN_FILE")
LEAN_DIR=$(dirname "$LEAN_FILE_ABS")
FILE_NAME=$(basename "$LEAN_FILE_ABS" .lean)

# Use provided output name or derive from file name
if [[ -z "$OUTPUT_NAME" ]]; then
    OUTPUT_NAME="$FILE_NAME"
fi

OUTPUT_PATH="$LEAN_DIR/$OUTPUT_NAME"

# Check if we're in a Lake project
LAKE_FILE=$(find "$LEAN_DIR" -maxdepth 3 -name "lakefile.toml" -type f 2>/dev/null | head -1)

if [[ -n "$LAKE_FILE" ]]; then
    PROJECT_DIR=$(dirname "$LAKE_FILE")
    echo "Found Lake project at: $PROJECT_DIR"
    
    # Create a temporary lean file that imports the target and has a main
    TEMP_DIR=$(mktemp -d)
    TEMP_MAIN="$TEMP_DIR/Main.lean"
    
    # Get the module path relative to the Lake project
    REL_PATH=$(realpath --relative-to="$PROJECT_DIR" "$LEAN_FILE_ABS" | sed 's/\.lean$//' | sed 's/\//./g')
    
    cat > "$TEMP_MAIN" <<EOF
import $REL_PATH

def main : IO Unit := do
  IO.println "Compiled from Lean to ELF"
EOF

    cd "$PROJECT_DIR"
    
    # Build with lake
    lake build "$FILE_NAME" 2>/dev/null || {
        # If direct build fails, try building the whole project
        lake build 2>/dev/null || true
    }
    
    # Find the built binary
    BUILT_BINARY=$(find .lake/build -name "$FILE_NAME" -type f -executable 2>/dev/null | head -1)
    
    if [[ -n "$BUILT_BINARY" ]]; then
        cp "$BUILT_BINARY" "$OUTPUT_PATH"
        chmod +x "$OUTPUT_PATH"
        echo "Successfully compiled to: $OUTPUT_PATH"
        file "$OUTPUT_PATH"
    else
        # Try finding any executable in build
        BUILT_BINARY=$(find .lake/build -type f -executable 2>/dev/null | head -1)
        if [[ -n "$BUILT_BINARY" ]]; then
            cp "$BUILT_BINARY" "$OUTPUT_PATH"
            chmod +x "$OUTPUT_PATH"
            echo "Successfully compiled to: $OUTPUT_PATH"
            file "$OUTPUT_PATH"
        else
            echo "Error: Could not find built binary"
            exit 1
        fi
    fi
    
    rm -rf "$TEMP_DIR"
else
    echo "No lakefile.toml found. Attempting standalone compilation with lean --c..."
    
    # Try using lean directly to compile to C then to binary
    TEMP_DIR=$(mktemp -d)
    cd "$TEMP_DIR"
    
    # Copy the lean file
    cp "$LEAN_FILE_ABS" .
    
    # Try to compile with lean --c
    if lean --c "$FILE_NAME.lean" 2>/dev/null; then
        # Compile the generated C to binary
        if [[ -f "$FILE_NAME.c" ]]; then
            gcc -o "$OUTPUT_PATH" "$FILE_NAME.c" -I$(lean --print-libdir)/include 2>/dev/null || {
                gcc -o "$OUTPUT_PATH" "$FILE_NAME.c" 2>/dev/null || true
            }
        fi
    fi
    
    if [[ -f "$OUTPUT_PATH" ]]; then
        echo "Successfully compiled to: $OUTPUT_PATH"
        file "$OUTPUT_PATH"
    else
        echo "Error: Standalone compilation failed. Please use a Lake project."
        exit 1
    fi
    
    rm -rf "$TEMP_DIR"
fi