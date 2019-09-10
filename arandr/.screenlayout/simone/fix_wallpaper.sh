#!/bin/bash

wal -i ~/guy-martin-michael-dunlop-duel-200mph.jpg --saturate .7
i3-msg restart
systemctl --user restart fluidspaces.service
