#! /bin/sh

EDITOR="emacsclient -c -a 'emacs'"

declare -a options=(
    "alacritty - $HOME/.config/alacritty/alacritty.yml"
    "emacs - $HOME/.emacs.d/config.org"
    "herbstluftwm - $HOME/.config/herbstluftwm/autostart"
    "picom - $HOME/.config/picom/picom.conf"
    "polybar - $HOME/.config/polybar/config"
    "starship - $HOME/.config/starship/config.toml"
    "tmux - $HOME/.tmux.conf"
    "qtile - $HOME/.config/qtile/config.py"
    "Xresources - $HOME/.Xresources"
    "zsh - $HOME/.zshrc"
    "quit"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "edit config" -font 'Fira Code 12')

if [[ "$choice" == "quit" ]]; then
    echo "program terminated" && exit 1

elif [ "$choice" ]; then
    cfg=$(printf '%s\n' "${choice}" | awk '{print $NF}')
    $EDITOR "$cfg"

else
    echo "program terminated" && exit 1
fi
    
