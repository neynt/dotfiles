# settings
export EDITOR="vim"
export BROWSER="chromium"
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=xim

# fool java
wmname LG3D

#start-pulseaudio-x11 &
xrdb ~/.Xresources
xsetroot -cursor_name left_ptr &
setxkbmap -option compose:ralt &
#feh --bg-center /vault/art/kyoko.png &

# background apps
#sleep 2 && batterymon &
sleep 3 && ibus-daemon -d &
#sleep 60 && dropboxd &
thunar --daemon &
compton &
sleep 4 && xfsettinsgd &
mpd &
mpdas &

# startup apps
xfce4-terminal -e wicd-curses &
xfce4-terminal -e alsamixer &

# dzen bar
#while true; do
#    date
#    sleep 1
#done | dzen2 &

# unleash the kraken
#/vault/code/sxhkd/sxhkd &
#exec dbus-launch /vault/code/bspwm/bspwm
exec dbus-launch awesome
