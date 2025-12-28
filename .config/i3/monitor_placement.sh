#!/bin/bash
LEFT_MONITOR=$(xrandr --listmonitors | grep HDMI | awk '{print $4}')
RIGHT_MONITOR=$(xrandr --listmonitors | grep DP | awk '{print $4}')
echo "$LEFT_MONITOR"
echo "$RIGHT_MONITOR"
if [ -z "$LEFT_MONITOR" ]; then
	xrandr --output "$RIGHT_MONITOR" --auto
else
	xrandr --output "$LEFT_MONITOR" --auto --left-of "$RIGHT_MONITOR"
fi
