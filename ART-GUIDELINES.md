# 🎨 Art Guidelines

To maintain consistency across the theme, please adhere to the following pixel art guidelines:

- Choose an existing Linux system icon and use the same file name. As a form of assistance, use the [Linux Icon Database](https://github.com/Starciad/linux-icon-database.git) repository to find out which icons exist.

- Always create icons at **32x32 pixels**.

- Use the **AAP-64** color palette by Adigun Polack as the primary color reference.
  - [Palette Reference](http://pixeljoint.com/pixelart/119466.htm).
  - Minor modifications (such as shading variations) are allowed but should not drastically differ from the theme's existing colors.

- The brush size (or pixel grid) should always be 1x1 pixel when drawing. This means that icons should not predominantly use pixel sizes of 2x2, 3x3, or larger. Some software allows drawing with larger pixel sizes, but since the available space is only 32x32 pixels, and all existing artwork in the project follows the 1x1 pixel style, icons with different pixel sizes would stand out inconsistently. In specific cases, exceptions may apply, but by default, always use individual 1x1 pixels for your artwork.
  
- Use the provided `resize_image` script to generate all required sizes automatically.

- **File Placement**:
  - Place your icon in the appropriate **subdirectory** under `src/` (e.g., `src/SPI/apps/`, `src/SPI/emblems/`).
  - Inside the category folder, use the **numerical size folders** (e.g., `src/SPI/apps/32x32/` for a 32x32 icon).
