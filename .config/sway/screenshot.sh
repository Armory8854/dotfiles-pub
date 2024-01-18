#!/bin/bash
SCREENSHOT_NAME="$HOME/Pictures/SS/$(date +'screenshot_%Y-%m-%d-%H%M%S.png')"
slurp | grim -g - $SCREENSHOT_NAME
wl-copy < $SCREENSHOT_NAME
