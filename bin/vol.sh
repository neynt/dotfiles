#!/bin/bash

case "$1" in
    up)
        amixer set Master '3%+'
    ;;
    down)
        amixer set Master '5%-'
    ;;
    mute)
        amixer set Master toggle
    ;;
esac

VOLUME=$( amixer get Master | egrep -o "[0-9]+%" )
dbus-send --type=method_call --dest='org.freedesktop.Notifications' \
    /org/freedesktop/Notifications org.freedesktop.Notifications.Notify \
    string:'[Volume]' \
    uint32:1 \
    string:'[ICON]' \
    string:'Volume' \
    string:"$VOLUME" \
    array:string:'' \
    dict:string:string:'','' \
    int32:1000

#echo "timewidget:set_text('yolo')" | awesome-client
