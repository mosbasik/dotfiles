#!/bin/sh
xrandr --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI3 --off --output HDMI2 --off --output HDMI1 --mode 1920x1080 --pos 1680x0 --rotate normal --output LVDS1 --off --output VGA1 --mode 1680x1050 --pos 0x0 --rotate normal

# fix the wallpaper
# ~/.screenlayout/active/fix_wallpaper.sh

wal -i ~/guy-martin-michael-dunlop-duel-200mph.jpg --saturate .7 # "-n" means don't set wallpaper
i3-msg restart
systemctl --user restart fluidspaces.service
