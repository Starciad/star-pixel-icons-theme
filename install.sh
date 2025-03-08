#!/bin/bash

# Requires build.sh and a working Linux environment.
# This script builds the icon pack and installs it locally.

# Run the build script (assumes build.sh is located in the repository root or adjust the path accordingly)
BUILD_SCRIPT="./scripts/build.sh"
if [ ! -f "$BUILD_SCRIPT" ]; then
    echo "Error: build.sh not found."
    exit 1
fi

echo "Building the icon pack using build.sh..."
bash "$BUILD_SCRIPT"
if [ $? -ne 0 ]; then
    echo "Error: build.sh encountered an issue."
    exit 1
fi

# Define the source directory for the built icons
ICON_SOURCE_DIR="./src/SPI"
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
