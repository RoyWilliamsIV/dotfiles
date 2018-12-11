# config This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see https://i3wm.org/docs/userguide.html for a complete reference!

# swap caps lock and escape
exec_always --no-startup-id xmodmap -e "clear lock"
# exec_always --no-startup-id xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"
exec_always --no-startup-id xmodmap -e "keycode 66 = Escape NoSymbol Escape"

set $mod Mod1
set $sup Mod4

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango:IBM Plex Mono Medium 10

# i3-gaps config lines
 for_window [class="^.*"] border pixel 2

# launch Firefox
bindsym $mod+apostrophe exec firefox

# launch Nautilus
bindsym $mod+backslash exec nautilus

# launch Spotify
bindsym $mod+bracketright exec spotify

# launch surf (duckduckgo.com)
bindsym $mod+bracketleft  exec surf duckduckgo.com

# gaps inner|outer current|all set|plus|minus <px>
 gaps inner 8
 gaps outer 8

new_window pixel 0
hide_edge_borders yes
# smart_borders on

# Make all new windows fullscreen
# for_window [class=".*"] fullscreen enable

default_floating_border none
default_border none

# colors
# class   	        border  back    text 	indicator child_border
client.focused		#000000	#000000 #aaaaaa #aaaaaa	  #aaaaaa	
client.focused_inactive #000000 #000000 #aaaaaa #aaaaaa   #aaaaaa
client.unfocused	#000000 #000000 #aaaaaa #aaaaaa   #aaaaaa
client.urgent		#aaaaaa #000000 #aaaaaa #aaaaaa   #aaaaaa
client.placeholder      #000000 #000000 #aaaaaa #aaaaaa   #aaaaaa

client.background #000000

# Quick Resize 
bindsym $mod+Ctrl+Left resize shrink width 5 px or 5 ppt
bindsym $mod+Ctrl+Down resize grow height 5 px or 5 ppt
bindsym $mod+Ctrl+Up resize shrink height 5 px or 5 ppt
bindsym $mod+Ctrl+Right resize grow width 5 px or 5 ppt

# Make the currently focused window a scratchpad
bindsym $mod+Shift+s move scratchpad

# Show the first scratchpad window
bindsym $mod+s scratchpad show

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 8

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# Move focused workspace to monitor
bindsym $mod+Shift+plus move workspace to output left
bindsym $mod+Shift+underscore move workspace to output right

# start a terminal
bindsym $mod+Return exec termite

# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
bindsym $mod+d exec dmenu_run  -nb '#000000' -nf '#ffffff' -sb '#ffffff' -sf '#000000' 
bindsym $mod+n exec networkmanager_dmenu  -nb '#000000' -nf '#ffffff' -sb '#ffffff' -sf '#000000'


# start rofi
# bindsym $mod+d exec rofi -dmenu 

# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
# bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# switch to workspace
bindsym $mod+1 workspace "1:一"
bindsym $mod+2 workspace "2:二"
bindsym $mod+3 workspace "3:三"
bindsym $mod+4 workspace "4:四"
bindsym $mod+5 workspace "5:五"
bindsym $mod+6 workspace "6:六"
bindsym $mod+7 workspace "7:七"
bindsym $mod+8 workspace "8:八"
bindsym $mod+9 workspace "9:九"
bindsym $mod+0 workspace "10:十"

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace "1:一"
bindsym $mod+Shift+2 move container to workspace "2:二"
bindsym $mod+Shift+3 move container to workspace "3:三"
bindsym $mod+Shift+4 move container to workspace "4:四"
bindsym $mod+Shift+5 move container to workspace "5:五"
bindsym $mod+Shift+6 move container to workspace "6:六"
bindsym $mod+Shift+7 move container to workspace "7:七"
bindsym $mod+Shift+8 move container to workspace "8:八"
bindsym $mod+Shift+9 move container to workspace "9:九"
bindsym $mod+Shift+0 move container to workspace "10:十"

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

# App shortcuts
bindysm $mod+c exec chromium

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
	i3bar_command i3bar -t
	position top
	
	strip_workspace_numbers yes
	
	mode hide 
	hidden_state hide
	modifier Mod1	
	colors {
	background #000000
	statusline #ffffff
	separator #ffffff
	
			 # border, back, text
	focused_workspace #ffffff #ffffff #000000
	active_workspace #000000 #000000 #ffffff
	inactive_workspace #000000 #000000 #ffffff
	urgent_workspace #000000 #000000 #ffffff
	}

        status_command i3status
}