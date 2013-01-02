#!/bin/sh
MAX_BRIGHTNESS=4710
CUR_BRIGHTNESS=$(</sys/class/backlight/intel_backlight/brightness)

STEP=$(( CUR_BRIGHTNESS / 5 ))

case "$1" in
	+)
		NEW=$(( CUR_BRIGHTNESS + STEP ))
		if [ $NEW -gt $MAX_BRIGHTNESS ]; then
			NEW=$MAX_BRIGHTNESS
		fi
		echo $NEW >> /opt/brightness
	;;
	-)
		NEW=$(( CUR_BRIGHTNESS - STEP ))
		if [ $NEW -lt 5 ]; then
			NEW=5
		fi
		echo $NEW >> /opt/brightness
esac

