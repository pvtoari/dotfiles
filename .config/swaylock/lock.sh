#!/bin/bash

DISPLAYS=$(hyprctl monitors -j | jq 'length')

if [ "$DISPLAYS" -le 1 ]; then
    swaylock -n -i "$HOME/.config/swaylock/single.png"
else
    swaylock -n -i "$HOME/.config/swaylock/tiled.png"
fi
