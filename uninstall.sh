#!/bin/bash
# This script completely removes the icon pack from your system.

DEST_DIR="/usr/share/icons/SPI"

echo "Uninstalling the SPI icon pack from $DEST_DIR..."

# Remove the SPI icon pack directory
sudo rm -rf "$DEST_DIR"
if [ $? -eq 0 ]; then
    echo "Icon pack successfully uninstalled."
else
    echo "Error: Could not remove $DEST_DIR."
    exit 1
fi
