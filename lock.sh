#Credits to  u/leintrovertguy on r/i3wm :-) 
#!/usr/bin/env bash

## icon="$HOME/Pictures/Wallpapers/"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"
