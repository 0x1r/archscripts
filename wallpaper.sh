#!/bin/bash

#(use #include pywaldwm.h in dwm under the colors stuff after removing dwm and dmenu colors)
echo "cloning a random wallpaper..."
wall=$(find $Home/pix/wall -type f | shuf -n 1)
echo "setting up wallpaper..."
xwallpaper --zoom $wall
wal -i $wall >/dev/null
sed -i 'N;$!P;D' $HOME/.cache/wal/colors-wal-dwm.h
echo "Recompiling dwm with new colors.."
(cd $HOME./.local/src/dwm && sudo make clean install>/dev/null)

echo "^_^ Restart dwm for new look"