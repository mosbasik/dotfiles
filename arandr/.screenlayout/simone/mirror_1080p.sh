#!/usr/bin/env bash

# originally known as ~/x_nikhil_on.sh

# cram 1080p into laptop display
# clone that 1080p display to HDMI
xrandr --fb 1920x1080 --output LVDS1 --mode 1366x768 --scale-from 1920x1080 --output HDMI1 --mode 1920x1080 --scale 1x1 --same-as LVDS1

# fix the wallpaper
~/.screenlayout/active/fix_wallpaper.sh
