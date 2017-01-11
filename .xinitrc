#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

#exec xterm -fn 5x10
exec bspwm

