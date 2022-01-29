#! /bin/sh

declare -a options=(
    "ä"
    "ü"
    "ö"
    "ß"
    "quit"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "umlaut" -font 'Fira Code 12')


if [[ "$choice" == "quit" ]]; then
    echo "program terminated" && exit 1

elif [ "$choice" ]; then
    copyq copy "$choice"
    
else
    echo "program terminated" && exit 1
fi
