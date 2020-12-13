#!/bin/bash

# This sets the resolution in virtualbox.
# make sure you install the

sleep 5

xrandr --newmode "1920x1080_144.00" 452.50 1920 2088 2296 2672 1080 1083 1088 1177 -hsync +vsync
xrandr --addmode Virtual1 "1920x1080_144.00"
xrandr --output Virtual1 --mode "1920x1080_144.00"
