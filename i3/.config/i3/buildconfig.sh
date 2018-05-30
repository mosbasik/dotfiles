#!/usr/bin/env bash

COLORS="/home/phenry/.config/i3/colors/gruvbox"
BAR="/home/phenry/.config/i3/bars/gruvbox"
VOLUME="/home/phenry/.config/i3/volume/pulseaudio-ctl"
DISPLAYS="/home/phenry/.config/i3/displays"
BASE="/home/phenry/.config/i3/base"

OUTPUT="/home/phenry/.config/i3/config"

cat $COLORS $BAR $VOLUME $DISPLAYS $BASE > $OUTPUT
