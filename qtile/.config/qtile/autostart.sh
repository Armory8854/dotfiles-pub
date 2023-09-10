#!/bin/sh
# Picom compositor
# -f = fading
# -b = daemon
# --corner-radius = rounded corners
# --vsync = vsync
if [ "$XDG_SESSION_TYPE"="x11" ]
then
	picom -f -b --corner-radius 5 --vsync --backend glx &
else
	export MOZ_ENABLE_WAYLAND=1
fi

