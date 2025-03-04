#!/bin/bash

# Requires build.sh and a working Linux environment.
# This script builds the icon pack and installs it locally.

# Determine the repository root (assumed to be the directory containing this script)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(realpath "$SCRIPT_DIR/../..")"

# Run the build script (assumes build.sh is located in the repository root or adjust the path accordingly)
BUILD_SCRIPT="$REPO_ROOT/build.sh"
if [ ! -f "$BUILD_SCRIPT" ]; then
    echo "Error: build.sh not found in $REPO_ROOT"
    exit 1
fi

echo "Building the icon pack using build.sh..."
bash "$BUILD_SCRIPT"
if [ $? -ne 0 ]; then
    echo "Error: build.sh encountered an issue."
    exit 1
fi

# Define the source directory for the built icons
ICON_SOURCE_DIR="$REPO_ROOT/src/SPI"
# Define the destination directory
DEST_DIR="/usr/share/icons/SPI"

echo "Installing icons from $ICON_SOURCE_DIR to $DEST_DIR..."

# Copy the icon pack to the local icons directory
sudo cp -r "$ICON_SOURCE_DIR" "$DEST_DIR"
if [ $? -eq 0 ]; then
    echo "Icon pack successfully installed to $DEST_DIR."
else
    echo "Error during installation."
    exit 1
fi
