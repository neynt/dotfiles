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
