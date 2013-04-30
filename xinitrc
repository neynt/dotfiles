# settings
export EDITOR="vim"
export BROWSER="firefox"
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# fool java
wmname LG3D

xrdb ~/.Xresources
xsetroot -cursor_name left_ptr &
setxkbmap -option compose:ralt &
#feh --bg-scale /trove/bg-tatami.png &
#xfsettingsd &

# background apps
ibus-daemon --xim -d &
thunar --daemon &

# startup apps
xfce4-terminal -e wicd-curses &
xfce4-terminal -e alsamixer &

# unleash the kraken
exec dbus-launch awesome
