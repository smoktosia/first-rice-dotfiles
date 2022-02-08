#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

if type "xrandr"; then
	  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		      MONITOR=$m polybar --reload mybar &
		        done
		else
			  polybar --reload mybar &
fi

# Launch Polybar, using default config location ~/.config/polybar/config
#polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown
