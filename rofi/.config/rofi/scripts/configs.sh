#! /bin/sh

EDITOR="emacsclient -c -a 'emacs'"

/.dotfiles

declare -a options=(
    "alacritty - $HOME/.dotfiles/alacritty/.config/alacritty/alacritty.yml"
    "emacs - $HOME/.dotfiles/emacs/.emacs.d/config.org"
    "herbstluftwm - $HOME/.dotfiles/herbstluftwm/.config/herbstluftwm/autostart"
    "picom - $HOME/.dotfiles/picom/.config/picom/picom.conf"
    "polybar - $HOME/.dotfiles/polybar/.config/polybar/config"
    "starship - $HOME/.dotfiles/starship/.config/starship/config.toml"
    "tmux - $HOME/.dotfiles/tmux/.tmux.conf"
    "qtile - $HOME/.dotfiles/qtile/.config/qtile/config.py"
    "Xresources - $HOME/.dotfiles/Xresources/.Xresources"
    "zsh - $HOME/.dotfiles/zsh/.zshrc"
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
    
