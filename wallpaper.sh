#!/bin/sh
#! Changes the wallpaper to a random from the wallpaper folder, updates every 15 minutes
while true; do
	find ~/.wallpaper -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
		shuf -n1 -z | xargs -0 feh --bg-fill
	sleep 15m
done
