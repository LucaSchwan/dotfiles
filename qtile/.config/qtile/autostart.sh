#!/usr/bin/env bash

picom &
nitrogen --restore &
emacs --daemon &
discord --start-minimized &
setxkbmap us -variant colemak
