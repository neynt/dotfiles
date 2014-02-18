#!/bin/bash

case "$1" in
    up)
        amixer set Master '3%+'
    ;;
    down)
        amixer set Master '3%-'
    ;;
    mute)
        amixer set Master toggle
    ;;
esac

VOL_PERC=$( amixer get Master | egrep -o "[0-9]+%" )
VOLUME=${VOL_PERC%?}

#dbus-send --type=method_call --dest='org.freedesktop.Notifications' \
#    /org/freedesktop/Notifications org.freedesktop.Notifications.Notify \
#    string:'[Volume]' \
#    uint32:1 \
#    string:'[ICON]' \
#    string:'Volume' \
#    string:"$VOLUME" \
#    array:string:'' \
#    dict:string:string:'','' \
#    int32:1000

MUTED=$(amixer get Master | egrep -o "\[off\]")
if [ "$MUTED" ]; then
    echo "vol_widget:set_color(theme.fg_normal)" | awesome-client
else
    echo "vol_widget:set_color(theme.border_focus)" | awesome-client
fi
echo "vol_widget:set_value($VOLUME/100)" | awesome-client

#echo "timewidget:set_text('yolo')" | awesome-client
