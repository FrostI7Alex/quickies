# Quickies

# Here you can find...

Things I've been using on Linux.

- Mod Organizer 2

## Mod Organizer 2

Mod Organizer 2 has no official Linux support. To run it on Linux, you must use either WINE or Proton; I recommend the latter. I'm running it under the Proton Experimental branch.

### How to

- Download the latest portable MO2 release.
- Extract it.
- Add it as a "Non-Steam Game."
- Run it with Proton enabled.
- Copy `nxmhandler.desktop` to `~/.local/share/applications/`.
- Copy `nxmhandler.sh` to your MO2 folder and mark it as executable.
- Update the paths and the AppID accordingly.
- Run `update-mime-database ~/.local/share/mime` to register the NXM Handler.

### Notes

The default path and AppID are `~/Programs/MO2` and `2194124069`, respectively.
You can find the AppID by running `protontricks`.
If MO2 fails to detect games during the instance setup, create a symbolic link to the game folder in an accessible location. For example: `ln -s "$HOME/.steam/steam/steamapps/common/Skyrim Special Edition/" "$HOME/Games"`.
