#!/bin/bash

# source xprofile files if they are present
[[ -f /etc/xprofile ]] && . /etc/xprofile
[[ -f ~/.xprofile ]] && . ~/.xprofile

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

# enable laptop display (because hdmi is main output)
#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto

# make DISPLAY available to systemd user services
systemctl --user import-environment DISPLAY

# start fluidspaces daemon
systemctl --user start fluidspaces.service

# start sxhkd daemon
systemctl --user start sxhkd.service

# start the dropbox daemon
/usr/bin/dropbox &

# start the urxvt daemon
urxvtd --quiet --opendisplay &

# start networkmanager tray applet
nm-applet &

# start script that locks screen after idle period
"${HOME}/.dotfiles/x11/.run-xsecurelock" &

# start i3 window manager
exec i3
