#!/usr/bin/env bash

# set output to laptop native resolution
# set laptop display to native resolution and scaling
# disable hdmi output
xrandr --fb 1366x768 --output LVDS-1 --mode 1366x768 --scale 1x1 --output HDMI-1 --off

# fix the wallpaper
~/.screenlayout/active/fix_wallpaper.sh
