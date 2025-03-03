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

## ✅ Icon Evaluation Criteria

All submitted icons will be reviewed based on the following criteria to ensure consistency with the theme:

| **Criteria**          | **Description** |
|----------------------|---------------|
| **Composition** | The icon should have a clear and recognizable silhouette, ensuring it is visually distinct at small sizes. |
| **Originality** | The icon should not be a direct copy of an existing design but an adaptation that fits the theme's style. |
| **Fidelity** | While not a direct replica, the icon should still resemble its intended application or object enough to be identifiable. |
| **Consistency** | The design should follow the existing art guidelines, including the use of the **AAP-64** color palette and the 32x32 pixel size. |
| **Aesthetic Appeal** | The icon should look polished, visually balanced, and not overly cluttered for a clean and appealing appearance. |

If an icon does not fully meet these criteria, the maintainers may suggest adjustments, request changes, or, in some cases, modify the icon after merging.

## 🎨 Tips for Creating Icons

If you are unsure how to start designing your icon, here are some useful tips:

- Before creating your icon, examine how similar applications or objects have been represented in other icon sets. Explore other pixel art icon packs for inspiration.
- The icon should be unique but should not look out of place within the set. Try to observe the style of other icons in the SPI Theme before submitting yours.
- Instead of making an exact pixel-by-pixel copy of an existing logo, try to **adapt** it creatively into a more charming and visually appealing form.
- In a 32x32 canvas, every pixel matters. Make sure the design does not feel too crowded or too empty.

## 🎨 Artistic Techniques for Improvement

To enhance the quality of your pixel art, consider the following strategies:

### 🟡 Shading & Lighting

- Use **dithering** subtly to create smoother shading transitions.
- Light sources should generally come from the **top-left**, as this maintains consistency with other icons.
- Avoid excessive gradients — pixel art should remain clear and readable.

### 🎨 Color Choice

- Stick to the **AAP-64** palette whenever possible to ensure visual consistency.
- Adjust **saturation and contrast** carefully to make details stand out without overpowering the composition.

### ✏️ Pixel Techniques

- Use **anti-aliasing sparingly** to smooth curves and edges without blurring.
- Edges should be subtle – avoid thick edges unless necessary for visibility. They should also not be completely black, but rather soft edges that match the cores of neighboring pixels.
- Remove stray pixels that might cause visual noise at small sizes.
