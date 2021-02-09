#!/usr/bin/env bash

# cram 1080i into laptop display
# clone that 1080i display to HDMI
# xrandr --fb 1920x1080 --output LVDS1 --mode 1366x768 --scale-from 1920x1080 --output HDMI1 --mode 1920x1080i --scale 1x1 --same-as LVDS1


xrandr \
    --fb 1920x1080 \
    --output LVDS-1 --mode 1366x768 --scale-from 1920x1080 \
    --output HDMI-1 --mode 1920x1080i --scale 1x1 --same-as LVDS-1 --transform 1.063,0,-72,0,1.04,-25,0,0,1 \

# && sleep 10 \
# && xrandr \
#     --fb 1920x1080 \
#     --output LVDS1 --mode 1366x768 --scale-from 1920x1080 \
#     --output HDMI1 --mode 1920x1080i --scale 1x1 --same-as LVDS1



# xrandr \
#     --fb 1920x1080 \
#     --output LVDS1 --mode 1366x768 --scale-from 1920x1080 \
#     --output HDMI1 --mode 1920x1080i --transform 0.8,0,-35,0,1.04,-19,0,0,1 \
# && sleep 5 \
# && xrandr \
#     --fb 1920x1080 \
#     --output LVDS1 --mode 1366x768 --scale-from 1920x1080 \
#     --output HDMI1 --mode 1920x1080i --scale 1x1 --same-as LVDS1

# fix the wallpaper
~/.screenlayout/active/fix_wallpaper.sh
