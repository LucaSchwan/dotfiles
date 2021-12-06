#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ $m == 'HDMI2' ]
    then 
      MONITOR=$m polybar -r mainbar &
    else
      MONITOR=$m polybar -r sidebar &
    fi
  done
else
  polybar -r mainbar &
fi

echo "Bars launched..."
