# Requires ffmpeg to be installed on the system.
# This script resizes an image to multiple specified dimensions using nearest-neighbor scaling to avoid blur.

# Check if an argument was provided
if ($args.Length -ne 1) {
    Write-Host "Usage: .\resize_image.ps1 <path_to_image>"
    exit 1
}

# Check if the input image file exists
$input_image = $args[0]
if (-not (Test-Path $input_image)) {
    Write-Host "File not found: $input_image"
    exit 1
}

# List of desired sizes
$sizes = @(8, 16, 32, 64, 96, 128, 160, 192, 224, 256)

# Create the 'resized_images' folder if it doesn't exist
$output_base_dir = "resized_images"
if (-not (Test-Path $output_base_dir)) {
    New-Item -ItemType Directory -Path $output_base_dir
}

# Resize the image to each size using nearest-neighbor scaling
foreach ($size in $sizes) {
    # Create a directory for each size
    $output_dir = "$output_base_dir\$size"
    if (-not (Test-Path $output_dir)) {
        New-Item -ItemType Directory -Path $output_dir
    }
    
    # Set the output file path
    $output_file = "$output_dir\" + [System.IO.Path]::GetFileName($input_image)
    
    Write-Host "Resizing to ${size}x${size} using nearest-neighbor scaling..."
    
    # Run ffmpeg to resize the image
    & ffmpeg -i $input_image -vf "scale=${size}:${size}:flags=neighbor" $output_file
}

Write-Host "Resizing completed. The resized images are located in the 'resized_images' folder."
