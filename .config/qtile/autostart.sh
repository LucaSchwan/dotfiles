#! /bin/bash
emacs --daemon
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
nitrogen --restore &
picom &
