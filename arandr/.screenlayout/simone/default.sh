#!/bin/sh
xrandr \
    --fb 1366x768 \
    --output DP1      --off \
    --output DP2      --off \
    --output DP3      --off \
    --output HDMI1    --off \
    --output HDMI2    --off \
    --output HDMI3    --off \
    --output LVDS1    --primary --mode 1366x768 --pos 0x0 --scale 1x1 --rotate normal \
    --output VIRTUAL1 --off \
    --output VGA1     --off

# fix the wallpaper
~/.screenlayout/active/fix_wallpaper.sh
