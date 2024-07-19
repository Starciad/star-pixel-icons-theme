#!/bin/bash

# Requires ffmpeg to be installed on the system.
# This script resizes an image to multiple specified dimensions using nearest-neighbor scaling to avoid blur.

# Check if an argument was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path_to_image>"
    exit 1
fi

# Check if the input image file exists
input_image="$1"
if [ ! -f "$input_image" ]; then
    echo "File not found: $input_image"
    exit 1
fi

# List of desired sizes
sizes=(8 16 32 64 96 128 160 192 224 256)

# Resize the image to each size using nearest-neighbor scaling
for size in "${sizes[@]}"; do
    # Create a directory for each size
    output_dir="resized_images/${size}"
    mkdir -p "$output_dir"
    
    # Set the output file path
    output_file="$output_dir/$(basename "$input_image")"
    
    echo "Resizing to ${size}x${size} using nearest-neighbor scaling..."
    ffmpeg -i "$input_image" -vf "scale=${size}:${size}:flags=neighbor" "$output_file"
done

echo "Resizing completed. The resized images are located in the 'resized_images' folder."
