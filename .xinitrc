#!/bin/sh

##################
# Roy's .xinitrc #
##################

# X200 Display .icc profile
# xcalib -d :0 ~/.color/icc/x200.icc

# X230 DPI adjustment
# xrandr --dpi 87 

# X230 Disable Touchpad
xinput --disable "SynPS/2 Synaptics TouchPad"

# Caps / ESC swap
xmodmap -e "clear lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"

# Disable system beep
xset -b

# Reload wallpaper
feh --bg-fill /home/roy/Media/Pictures/Wallpapers/current

# Start compositor
compton & 

# Start i3
# exec i3

# dwm Statusbar loop
while true; do
   xsetroot -name "$( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &

# Start dwm
exec dwm

