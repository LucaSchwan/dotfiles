#! /bin/sh

picom --experimental-backends &
nitrogen --restore &
emacs --daemon &
pa-applet &
discord --start-minimized &
dropbox &
setxkbmap us -variant colemak
