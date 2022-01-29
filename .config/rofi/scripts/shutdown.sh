#! /bin/sh

declare -a options=(
    "shutdown"
    "reboot"
    "quit"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "option" -font 'Fira Code 12')

if test "$choice" = "quit"; then
    echo "program terminated" && exit 1

elif test "$choice" = "shutdown"; then
    shutdown now 

elif test "$choice" = "reboot"; then
   shutdown -r now

else
    echo "program terminated" && exit 1

fi
