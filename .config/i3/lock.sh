#!/bin/bash

#Dependencies
# -i3lock
# -Scrot
# -Imagmagick
icon=/home/bob/.config/i3/padlock.png
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"