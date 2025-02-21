#!/bin/bash

# This script is used to send downloads from the Nexus Mods website to Mod Organizer 2.

nxm_link="$1"
shift

# Check if an NXM link was provided.
if [ -z "$nxm_link" ]; then
	echo "ERROR: Please specify an NXM link to download." >&2
	# Exit with an error status.
	exit 1
fi

# Set MO2 directory.
mo2_dir="$HOME/Programs/MO2"

# Set MO2 Steam AppID.
game_appid="2194124069"

# Send the download to the running Mod Organizer 2 instance.
download_start=$(WINEESYNC=1 WINEFSYNC=1 protontricks-launch --appid "$game_appid" "$mo2_dir/nxmhandler.exe" "$nxm_link")
