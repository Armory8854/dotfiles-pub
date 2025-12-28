#!/bin/bash
MOUSE_NAME="Logitech MX Ergo Multi-Device Trackball"
MOUSE_LINE=$(xinput | grep "$MOUSE_NAME")
MOUSE_ID=$(echo "$MOUSE_LINE" | grep -oE "id=[0-9]+" | sed 's/id=//g')
xinput --set-prop "$MOUSE_ID" 'libinput Accel Speed' 1
