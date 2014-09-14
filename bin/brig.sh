#!/bin/sh
MAX_BRIGHTNESS=$(</sys/class/backlight/intel_backlight/max_brightness)
CUR_BRIGHTNESS=$(</sys/class/backlight/intel_backlight/brightness)
#MAX_BRIGHTNESS=$(</sys/class/backlight/radeon_bl0/max_brightness)
#CUR_BRIGHTNESS=$(</sys/class/backlight/radeon_bl0/brightness)
#MAX_BRIGHTNESS=$(</sys/class/backlight/acpi_video0/max_brightness)
#CUR_BRIGHTNESS=$(</sys/class/backlight/acpi_video0/brightness)

STEP=$(( CUR_BRIGHTNESS / 5 + 1 ))

case "$1" in
	+)
		NEW=$(( CUR_BRIGHTNESS + STEP ))
		if [ $NEW -gt $MAX_BRIGHTNESS ]; then
			NEW=$MAX_BRIGHTNESS
		fi
		echo $NEW >> /tmp/brigs
	;;
	-)
		NEW=$(( CUR_BRIGHTNESS - STEP ))
		if [ $NEW -lt 1 ]; then
			NEW=1
		fi
		echo $NEW >> /tmp/brigs
esac

