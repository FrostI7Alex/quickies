# Quickies

## Overview

Here you can find various scripts and other Linux-related notes.

Currently includes:
- Mod Organizer 2

## Mod Organizer 2

Mod Organizer 2 (MO2) does not have official Linux support. To run it on Linux, you need a compatibility layer like WINE or Proton. Proton is generally recommended, especially for integration with Steam games. These instructions assume you are using Proton (specifically tested with Proton Experimental and Proton-GE Custom, but other versions may work).

### Setup

1. Download the latest portable [MO2 release](https://github.com/ModOrganizer2/modorganizer/releases).
2. Extract it.
3. Add it as a "Non-Steam Game."
4. Enable Proton compatibility for MO2.
5. Install [Microsoft Visual C++ Redistributable 14.40.33810.0](https://aka.ms/vs/17/release/vc_redist.x64.exe) in a newly created MO2 prefix.
6. Copy `nxmhandler.desktop` to `~/.local/share/applications/`.
7. Copy `nxmhandler.sh` to your MO2 folder and mark it as executable.
8. Update the paths and the AppID accordingly.
9. Run `update-mime-database ~/.local/share/mime` to register the NXM Handler.

### Notes & Troubleshooting

* **Default Paths/AppID:** The default path and AppID are `~/Programs/MO2` and `2194124069`, respectively.
* **Finding the AppID:** You can find the AppID by running `protontricks`.
* **Game Detection Issues:** If MO2 fails to detect games during the instance setup, create a symbolic link to the game folder in an accessible location. For example: `ln -s "$HOME/.steam/steam/steamapps/common/Skyrim Special Edition/" "$HOME/Games"`.
* **Font Rendering:** If fonts render incorrectly, make sure to enable font smoothing. Use `protontricks`, navigate to your MO2 prefix, change settings, and choose `fontsmooth=rgb`.

### Modding-related

* **LOOT:** For some reason, LOOT messes up the load order. Current, hacky workaround is running a Windows VM with mounts of the Skyrim and MO2, and installed LOOT pointed at the MO2 profile's load order.
* **Pandora:** Make sure that you've installed the [.NET 8 Desktop Runtime](https://dotnet.microsoft.com/en-us/download/dotnet/8.0) in your MO2 prefix.
