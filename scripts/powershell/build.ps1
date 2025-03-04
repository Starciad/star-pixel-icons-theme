# Requires ffmpeg to be installed on the system.
# This script scans the icon directory structure, finds 32x32 icons, and generates resized versions.

# Define the root directory of icons (relative to script location)
$script_dir = Split-Path -Parent $MyInvocation.MyCommand.Path
$root_dir = Join-Path $script_dir "..\..\src\SPI"

# Check if the root directory exists
if (-not (Test-Path $root_dir)) {
    Write-Host "Error: Icons root directory not found at: $root_dir"
    exit 1
}

Write-Host "Scanning icon directories in: $root_dir"

# List of target sizes (excluding 32, which is the base size)
$sizes = @(8, 16, 64, 96, 128, 160, 192, 224, 256)

# Iterate through each category in the root directory
$categories = Get-ChildItem -Path $root_dir -Directory

foreach ($category in $categories) {
    # Find the "32" directory inside the category
    $base_size_dir = Join-Path $category.FullName "32"
    
    if (Test-Path $base_size_dir) {
        Write-Host "Processing category: $($category.Name)"

        # Get all PNG files in the "32" directory
        $icons = Get-ChildItem -Path $base_size_dir -Filter "*.png"

        foreach ($icon in $icons) {
            $input_image = $icon.FullName

            foreach ($size in $sizes) {
                # Define the output directory based on the current category and size
                $output_dir = Join-Path $category.FullName "$size"

                # Create the directory if it doesn't exist
                if (-not (Test-Path $output_dir)) {
                    New-Item -ItemType Directory -Path $output_dir | Out-Null
                }

                # Define the output file path
                $output_file = Join-Path $output_dir $icon.Name

                Write-Host "Resizing $($icon.Name) to ${size}x${size} in $output_dir"

                # Run ffmpeg to resize the image using nearest-neighbor scaling
                & ffmpeg -i $input_image -vf "scale=${size}:${size}:flags=neighbor" $output_file
            }
        }
    } else {
        Write-Host "Skipping category (no '32' directory found): $($category.Name)"
    }
}

Write-Host "Icon resizing process completed."
