#!/bin/sh
xrandr --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI3 --off --output HDMI2 --off --output HDMI1 --mode 1920x1080 --pos 1366x0 --rotate normal --output LVDS1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output VGA1 --off

# fix the wallpaper
~/.screenlayout/active/fix_wallpaper.sh
