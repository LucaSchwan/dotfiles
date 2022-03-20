#! /bin/sh

script=$( /bin/ls ~/.config/rofi/scripts | rofi -dmenu -p "scripts" -font 'Fira Code 12')

if [ "$script" ]; then
    ~/.config/rofi/scripts/$script

else
    echo "program terminated" && exit 1
fi
  
