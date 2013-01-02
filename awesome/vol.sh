#!/bin/bash

SINK_NAME="alsa_output.pci-0000_00_1b.0.analog-stereo"

VOL_NOW=`pacmd dump | grep -P "^set-sink-volume $SINK_NAME\s+" | perl -p -i -e 's/.+\s(.x.+)$/$1/'`

VOL_INC=$((VOL_NOW / 11 + 0x800))
VOL_DEC=$((VOL_NOW / 7 + 0x800))

case "$1" in
	up)
	VOL_NEW=$((VOL_NOW + VOL_INC))
	if [ $VOL_NEW -gt $((0x20000)) ]
	then
		VOL_NEW=$((0x20000))
	fi
	pactl set-sink-volume 0 `printf "0x%X" $VOL_NEW`

	;;
	down)
	VOL_NEW=$((VOL_NOW - VOL_DEC))
	if [ $(($VOL_NEW)) -lt $((0x00000)) ]
	then
		VOL_NEW=$((0x00000))
	fi
	pactl set-sink-volume 0 `printf "0x%X" $VOL_NEW`

	;;
	mute)
	MUTE_STATE=`pacmd dump | grep -P "^set-sink-mute $SINK_NAME\s+" | perl -p -i -e 's/.+\s(yes|no)$/$1/'`
	if [ $MUTE_STATE = no ]
	then
        pactl set-sink-mute $SINK_NAME 1
	elif [ $MUTE_STATE = yes ]
	then
		pactl set-sink-mute $SINK_NAME 0
	fi

    ;;
    init)
    exit

esac

# Update any widgets (awesome or volnoti)

#VOL=`pacmd dump | grep "set-sink-volume" | awk --non-decimal-data '{print int($3/655.35)}'`
# VOL=`printf "%-3s" $VOL`
#MUTED=`pacmd dump | grep "set-sink-mute" | awk '{print $3}'`
#if [ $MUTED = "yes" ]; then STATUS="volimg_muted";
#else STATUS="volimg"
#fi
#VOL=$(echo $VOL | awk '{print int($1/10+0.9999)*10}')
#echo "volwidget.text = '$VOL%'" | awesome-client;
#echo "volicon.image = $STATUS" | awesome-client;
#volnoti-show $VOL
