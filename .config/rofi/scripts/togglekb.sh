keymap=$(setxkbmap -query | grep 'layout' | awk '{printf $2}')

if [[ "$keymap" == "us" ]]; then
    setxkbmap de
elif [[ "$keymap" == "de" ]]; then
    setxkbmap us
else
    echo "Keymap can't be toggled please set to either 'us' or 'de'."
fi
