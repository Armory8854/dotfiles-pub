#!/bin/bash
# Run this as an exec in your Wayland WM init script to change your background 
# to a random image every X minutes or hours.
# EXAMPLE: exec bash "$HOME/.config/river/sway_bg.sh

# First we see if swaybg is even running
SWAYBG_PID=$(pidof swaybg)
echo "pidof swaybg is: $SWAYBG_PID"
# Then we register the wallpaper directory
WALLPAPER_DIR="$HOME/Pictures/WP"
echo "wallpaper dir is: $WALLPAPER_DIR"
# Begin the if statement to close swaybg if it's running 

kill_sway_bg() {
	echo "Checking is swaybg pid is running...."
	if [ -n "${SWAYBG_PID}" ]; then
		echo "it is - executing killall swaybg"
		killall swaybg
	fi
}

# Execute the swaybg command
while true; do
	echo "Running kill_sway_bh FUNCTION"
	kill_sway_bg
	swaybg -i "$(shuf -en1 $WALLPAPER_DIR/*)" &
	echo "Sleeping for 360"
	sleep 360
done


