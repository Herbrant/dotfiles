#!/bin/sh
# Times the screen off and puts it to background
wallpaper=~/Immagini/Sfondi/lockscreen.jpg

swayidle \
    timeout 10 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &
# Locks the screen immediately
swaylock -c 550000 -i $wallpaper
# Kills last background task so idle timer doesn't keep running
kill %%
