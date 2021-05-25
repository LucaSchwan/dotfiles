#! /bin/sh

picom --experimental-backends &
nitrogen --restore &
emacs --daemon &
pa-applet &
discord --start-minimized &
franz &
dropbox &
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap &
