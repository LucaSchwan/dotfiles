#! /bin/sh

picom &
nitrogen --restore &
emacs --daemon &
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap &
