#! /bin/sh

picom --experimental-backends &
nitrogen --restore &
emacs --daemon &
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap &
