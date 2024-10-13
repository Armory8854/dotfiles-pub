#!/bin/sh -e

# Set the time variable for file names
SS_TIME=$(date +%F-%k-%M)
SS_FILE_NAME="i3lock_$SS_TIME.png"

# Take a screenshot
scrot "/tmp/$SS_FILE_NAME"

# Pixellate it 10x
mogrify -scale 10% -scale 1000% "/tmp/$SS_FILE_NAME"

# Lock screen displaying this image.
i3lock -i "/tmp/$SS_FILE_NAME"

# Turn the screen off after a delay.
sleep 60; pgrep i3lock && xset dpms force off
