# Star Pixel Icons Theme

The `src/` (Source) directory contains all the files that make up the **SPI** theme. The main theme directory is named `SPI/`, and this is where all icon artwork is stored. Within this directory, you will find several subdirectories that organize icons into different categories, following the standard structures used in Linux systems.

The `index.theme` file is responsible for indexing all icons in the theme. Additionally, it acts as a configuration file, defining the general aspects of the icon pack so that the system can properly identify and apply the icons.

## Size Variations

Each category subdirectory initially contains only one subdirectory: the **32** directory. This means that all icons inside it are designed at **32x32 pixels**.

The `index.theme` file references icons in various sizes, and to generate these variations automatically, you can use the `build` script located in the `scripts/` directory. There are two versions of this script: one for **Bash** and another for **PowerShell**. Since this theme is only compatible with Linux graphical environments, the PowerShell version is not required.

The `build` script scans the directories, identifies all `.png` icons, and generates resized versions, placing them in their respective directories. Generated directories of different sizes are ignored by gitignore, which references them in full.

> [!IMPORTANT]  
> The build script requires that you have the FFMPEG tool installed in your environment. Without it, it will not be possible to run it, since it is used to resize images.

### **Note on the Build Process**

The time required to generate the size variations depends on the number of icons being processed. This approach helps keep the repository lightweight by avoiding unnecessary storage of multiple image files, reducing its size and making maintenance easier. As a result, only **32x32** icons are stored in the repository.

If you prefer not to generate the variations manually, you can find the prebuilt package in the project's Releases section.
