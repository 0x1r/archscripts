#!bin/sh
while read file
do
		fullpath="$(pwd)/file"
		case '$1' in
		'w'
				cp '$file ~/.config/wall.png' &&
				feh --fullscale '$HOME/.config/wall.png' &&
				notify-send -i "$HOME/.config/wall.png" "Wallpaper-changed"