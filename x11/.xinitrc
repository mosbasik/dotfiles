#!/bin/bash

# source .Xresources if it is present
# [[ -f ~/.Xresources ]] && xrdb -merge -I"$HOME" ~/.Xresources &  # moved to i3 config
xrdb -load ~/.Xresources &

# start auto-mounting media
# devmon &  # moved to i3 config

# set the wallpaper
# sh ~/.fehbg &  # moved to i3 config

# disable console beep
# /usr/bin/xset b off &  # moved to i3 config

# start screensaver process in background
# xscreensaver -no-splash &  # moved to i3 config

# start networkmanager tray applet
# nm-applet &  # moved to i3 config

# enable laptop display (because hdmi is main output)
#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto

# start the dropbox daemon
/usr/bin/dropbox &

# start the urxvt daemon
urxvtd --quiet --opendisplay &

# start i3 window manager
exec i3
