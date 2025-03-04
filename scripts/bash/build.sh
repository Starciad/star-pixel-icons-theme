#!/bin/bash

# Requires ffmpeg to be installed on the system.
# This script scans the icon directory structure, finds 32x32 icons, and generates resized versions.

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
# Define the root directory of icons relative to the script's location
ROOT_DIR="$(realpath "$SCRIPT_DIR/../../src/SPI")"

# Check if the root directory exists
if [ ! -d "$ROOT_DIR" ]; then
    echo "Error: Icons root directory not found at: $ROOT_DIR"
    exit 1
fi

echo "Scanning icon directories in: $ROOT_DIR"

# List of target sizes (excluding 32, which is the base size)
sizes=(8 16 64 96 128 160 192 224 256)

# Iterate through each category in the root directory
for category in "$ROOT_DIR"/*/; do
    CATEGORY_NAME="$(basename "$category")"
    BASE_SIZE_DIR="${category}32"
    
    if [ -d "$BASE_SIZE_DIR" ]; then
        echo "Processing category: $CATEGORY_NAME"
        
        # Loop through all PNG files in the 32 directory
        for icon in "$BASE_SIZE_DIR"/*.png; do
            # Check if there are any .png files
            if [ ! -f "$icon" ]; then
                continue
            fi
            
            ICON_NAME="$(basename "$icon")"
            
            for size in "${sizes[@]}"; do
                OUTPUT_DIR="${category}${size}"
                
                # Create the output directory if it doesn't exist
                if [ ! -d "$OUTPUT_DIR" ]; then
                    mkdir -p "$OUTPUT_DIR"
                fi
                
                OUTPUT_FILE="${OUTPUT_DIR}/${ICON_NAME}"
                
                echo "Resizing ${ICON_NAME} to ${size}x${size} in ${OUTPUT_DIR}"
                ffmpeg -i "$icon" -vf "scale=${size}:${size}:flags=neighbor" "$OUTPUT_FILE" -y
            done
        done
    else
        echo "Skipping category (no '32' directory found): $CATEGORY_NAME"
    fi
done

echo "Icon resizing process completed."
