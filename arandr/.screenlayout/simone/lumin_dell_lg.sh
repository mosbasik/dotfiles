#!/bin/sh

# return to the default laptop display
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

# pause to let the previous step complete
sleep 3

# extend between LVDS1 and HDMI1
xrandr \
    --output DP1      --off \
    --output DP2      --off \
    --output DP3      --off \
    --output HDMI1    --mode 1920x1080 --pos 1366x0 --rotate normal \
    --output HDMI2    --off \
    --output HDMI3    --off \
    --output LVDS1    --primary --mode 1366x768 --pos 0x0 --rotate normal \
    --output VIRTUAL1 --off \
    --output VGA1 --off

# pause to let the previous step complete
sleep 3

# deactivate LVDS1 and extend between VGA1 and HDMI1
xrandr \
    --output DP1      --off \
    --output DP2      --off \
    --output DP3      --off \
    --output HDMI1    --mode 1920x1080 --pos 1920x0 --rotate normal \
    --output HDMI2    --off \
    --output HDMI3    --off \
    --output LVDS1    --off \
    --output VGA1     --mode 1920x1080 --pos 0x0 --rotate normal \
    --output VIRTUAL1 --off

# fix the wallpaper
~/.screenlayout/active/fix_wallpaper.sh
