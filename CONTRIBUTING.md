# 🌟 Contributing to Star Pixel Icons Theme (SPI Theme)

Thank you for your interest in contributing to the **Star Pixel Icons Theme (SPI Theme)**! This document will guide you through the contribution process, including how to submit new icons and follow the artistic guidelines.

## 🛠 How to Contribute

1. **Fork the Repository**

   Click the "Fork" button on the top right of the repository page to create a copy of the project under your account.

2. **Clone Your Fork**

   Clone the forked repository to your local machine using:

   ```sh
   git clone https://github.com/Starciad/star-pixel-icons-theme.git
   ```

3. **Create a New Branch**

   Use a descriptive branch name, such as:

   ```sh
   git checkout -b add-new-icon
   ```

4. **Create the Pixel Art Icon**

   Follow the [Art Guidelines](./ART-GUIDELINES.md) to ensure your icon matches the theme.

5. **Use the Image Resizer Script**

   Once your 32x32 pixel art icon is complete, run the `resize_image` script (available in both Bash and PowerShell) to generate the required sizes:

   ```sh
   ./scripts/bash/tools/resize_image.sh icon.png   # For Linux/macOS
   ./scripts/powershell/tools/resize_image.ps1 icon.png  # For Windows (PowerShell)
   ```

   > The script makes use of the FFMPEG library. Remember to install it in your environment.

6. **Organize the Files**

   Place the generated files inside the appropriate subdirectory under `src/`, following the Linux icon organization structure.

7. **Commit and Push Changes**

   ```sh
   git add .
   git commit -m "feat: added new pixel icon for [icon_name]."
   git push origin add-new-icon
   ```

8. **Create a Pull Request**

   Go to the original repository, click on "Pull Requests," and submit your changes for review.

## 🚀 Need Help?

If you have any questions, feel free to open an issue or reach out in the discussions section of the repository.

Happy pixeling! 🎨✨
