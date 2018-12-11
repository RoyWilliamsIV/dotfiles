#!/bin/sh

xset -b
sudo rfkill block bluetooth
tlp start
# This is for the X200
xcalib -d :0 ~/.color/icc/x200.icc
wal -R
feh --bg-fill /home/roy/Media/Pictures/Wallpapers/current
#compton --vsync opengl &
#nm-applet &
i3

