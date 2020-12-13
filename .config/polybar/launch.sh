#!/bin/bash

sleep 3

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar --config=$HOME/.config/polybar/config.ini one &
polybar --config=$HOME/.config/polybar/config.ini two &

echo "Polybar launched..."
