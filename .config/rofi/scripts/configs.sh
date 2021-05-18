#! /bin/sh

EDITOR="emacsclient -c -a 'emacs'"

declare -a options=(
    "alacritty - $HOME/.config/alacritty/alacritty.yml"
    "emacs - $HOME/.emacs.d/config.org"
    "qtile - $HOME/.config/qtile/config.py"
    "Xresources - $HOME/.Xrecouces"
    "zsh - $HOME/.zshrc"
    "quit"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -r "edit config:" -font 'Fira Code 12')

if [[ "$choice" == "quit" ]]; then
    echo "program terminated" && exit 1

elif [ "$choice" ]; then
    cfg=$(printf '%s\n' "${choice}" | awk '{print $NF}')
    $EDITOR "$cfg"

else
    echo "program terminated" && exit 1
fi
    
