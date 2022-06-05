#!/bin/bash
while [ true ]

do

set -e

output=pscircle.png

pscircle \
    --output=$output \
    --tree-font-face=CascadiaCodePL \
    --toplists-font-face=CascadiaCodePL \
    --memlist-show=false \
    --cpulist-show=false \
    --output-width=4000 \
    --output-height=4000 \
	--background-color=1d1f21 \
#    --link-color-min=375143a0 \
#    --link-color-max=375143 \
#    --dot-color-min=7c762f \
#    --dot-color-max=b56e46 \
#    --tree-font-size=18 \
#    --tree-font-color=94bfd1 \
#    --background-image=/home/nichki/images/wallpaper/evangelion1.png \

if command -v feh >/dev/null; then
	feh --bg-fill $output
	rm -f $output
fi

sleep 5

done
