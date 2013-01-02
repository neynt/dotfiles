#!/bin/bash
if [ "$1" = "area" ]; then
    sleep 0.3
	scrot -s /stash/jim/scrots/%Y-%m-%d-%T-$RANDOM.png
else
	scrot /stash/jim/scrots/%Y-%m-%d-%T-$RANDOM.png
fi
notify-send -t 400 "Screenshot taken."
