#!/bin/bash
FILENAME="screenshot-`date +%F-%T`"
#grim -g "$(slurp)" ~/Immagini/$FILENAME.png
grim -g "$(swaymsg -t get_tree | jq -r '.. | select(.pid? and .visible?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"' | slurp)" - | swappy -f -
