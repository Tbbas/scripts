#!/bin/sh

#! Changes the wallpaper to a random from the wallpaper folder
find ~/.wallpaper -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
		shuf -n1 -z | xargs -0 feh --bg-fill
