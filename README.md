# Quickies

## Overview

Here you can find various scripts and other Linux-related notes.

Currently includes:
- Mod Organizer 2

## Mod Organizer 2

Mod Organizer 2 (MO2) does not have official Linux support. To run it on Linux, you need a compatibility layer like WINE or Proton. Proton is generally recommended, especially for its integration with Steam games. These instructions assume you are using Proton (specifically tested with Proton Experimental and Proton-GE Custom, but other versions may work).

### Setup

1. Download the latest portable [MO2 release](https://github.com/ModOrganizer2/modorganizer/releases) and extract it.
2. Add `ModOrganizer.exe` as a "Non-Steam Game."
3. Enable Proton compatibility for MO2.
4. Launch MO2 once to create its prefix, then install [Microsoft Visual C++ Redistributable 14.40.33810.0](https://aka.ms/vs/17/release/vc_redist.x64.exe) into the MO2 prefix using `protontricks`.
5. Copy `nxmhandler.desktop` to `~/.local/share/applications/`.
6. Copy `nxmhandler.sh` to your MO2 folder and mark it as executable.
7. Update the path and the AppID in `nxmhandler.sh` accordingly.
8. Run `update-mime-database ~/.local/share/mime` to register the NXM Handler.

### Notes & Troubleshooting

* **Default Path/AppID:** The default path and AppID are `~/Programs/MO2` and `2194124069`, respectively.
* **Finding the AppID:** You can easily find the AppID by running `protontricks`.
* **Game Detection Issues:** If MO2 fails to detect games during the instance setup, create a symbolic link to the game folder in an accessible location. Example: `ln -s "$HOME/.steam/steam/steamapps/common/Skyrim Special Edition/" "$HOME/Games"`.
* **Font Rendering:** If fonts render incorrectly, make sure to enable font smoothing. Use `protontricks`, navigate to your MO2 prefix, change settings, and choose `fontsmooth=rgb`.
* **FOMOD Crashing:** Some FOMOD installers require `PROTON_HEAP_DELAY_FREE` to be added to the launch options. Example: `PROTON_HEAP_DELAY_FREE=1 %command%`.

### Modding-Specific Notes

* **[LOOT](https://github.com/loot/loot):** When run via Proton, LOOT may incorrectly sort the load order. A functional workaround is to run LOOT inside a Windows virtual machine. To do this, mount the game and MO2 directories within the VM and point the Windows installation of LOOT to the appropriate MO2 profile's load order file.
* **[Pandora](https://github.com/Monitor221hz/Pandora-Behaviour-Engine-Plus):** This tool requires the [.NET 8 Desktop Runtime](https://dotnet.microsoft.com/en-us/download/dotnet/8.0) installed in your MO2 prefix.
* **[Embers XD](https://www.nexusmods.com/skyrimspecialedition/mods/37085):** MO2 crashes during the FOMOD installer. See **FOMOD Crashing** section for the solution.
