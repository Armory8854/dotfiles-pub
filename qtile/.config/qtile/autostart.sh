#!/bin/sh
# Picom compositor
# -f = fading
# -b = daemon
# --corner-radius = rounded corners
# --vsync = vsync
picom -f -b --corner-radius 5 --vsync &
