# settings
export EDITOR="vim"
export BROWSER="firefox"
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
#export LANG=ja_JP.UTF-8
export DISPLAY=:0.0

# fool java
wmname LG3D

start-pulseaudio-x11 &
#xrdb ~/.Xresources
xsetroot -cursor_name left_ptr &
setxkbmap -option compose:ralt &
#feh --bg-center /vault/art/kyoko.png &

# background apps
sleep 10 && batterymon &
#sleep 60 && ibus-daemon --replace --xim -d &
sleep 90 && dropboxd &
thunar --daemon &
#breaks.sh &
#pcmanfm -d &
compton &
nm-applet &
mpd &
mpdas &
batterymon &

# startup apps
#xfce4-terminal -e alsamixer &

# dzen bar
#while true; do
#    date
#    sleep 1
#done | dzen2 &

# unleash the kraken
#sxhkd &
#exec dbus-launch bspwm
exec dbus-launch awesome
