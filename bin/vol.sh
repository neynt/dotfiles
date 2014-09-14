#!/bin/bash

OLD_VOL_PERC=$( amixer get Master | egrep -o "[0-9]+%" | head -n 1 )
OLD_VOL=${OLD_VOL_PERC%?}

case "$1" in
    up)
        NEW_VOL=$(( $OLD_VOL + 5 ))
        NEW_VOL=$(( $NEW_VOL <= 100 ? $NEW_VOL : 100 ))
    ;;
    down)
        NEW_VOL=$(( $OLD_VOL - 5 ))
        NEW_VOL=$(( $NEW_VOL >= 0 ? $NEW_VOL : 0 ))
    ;;
    mute)
        NEW_VOL=$(( $OLD_VOL ))
        amixer sset Master toggle
    ;;
esac

amixer sset Master "$NEW_VOL%"
echo $NEW_VOL

#VOL_PERC=$( amixer get Master | egrep -o "[0-9]+%" )
#VOLUME=${VOL_PERC%?}
#echo $VOLUME

MUTED=$(amixer get Master | egrep -o "\[off\]")
if [ "$MUTED" ]; then
    echo "vol_widget:set_color(theme.border_normal)" | awesome-client
    MSG="$NEW_VOL (muted)"
else
    echo "vol_widget:set_color(theme.border_focus)" | awesome-client
    MSG="$NEW_VOL"
fi
echo "vol_widget:set_value($NEW_VOL/100)" | awesome-client

dbus-send --type=method_call --dest='org.freedesktop.Notifications' \
    /org/freedesktop/Notifications org.freedesktop.Notifications.Notify \
    string:'[Volume]' \
    uint32:1 \
    string:'[ICON]' \
    string:'Volume' \
    string:"$MSG" \
    array:string:'' \
    dict:string:string:'','' \
    int32:1000

#echo "timewidget:set_text('yolo')" | awesome-client
