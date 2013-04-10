#!/usr/bin/env zsh
cd ${HOME}

# Settings
export EDITOR="vim"
export BROWSER="firefox"
#export DE="gnome"
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

xset m 8 3 &
xset r rate 180 58 &
xrdb -merge "${HOME}/.Xresources"
xmodmap "${HOME}/.Xmodmap"
wmname LG3D & # Fool Java apps
setxkbmap -option compose:ralt # compose key!

# Remove any leftover PULSE variables from previous logins
# -- otherwise, it refuses to start at all
# (seriously who thought it was a good idea to leave
# crap in the root window)
xprop -root -remove PULSE_SERVER
xprop -root -remove PULSE_ID
xprop -root -remove PULSE_COOKIE
xprop -root -remove PULSE_SESSION_ID

# Systemd for user (just mpd now)
systemd --user &

# Source certain xinitrc.d scripts
RCDIR="/etc/X11/xinit/xinitrc.d"
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in 30-dbus 40-libcanberra-gtk-module pulseaudio; do
        [ -x "$RCDIR/$f" ] && . "$RCDIR/$f"
    done
    unset f
fi

# Background applications
unclutter -idle 8 -jitter 2 -root &
#mpd &
#urxvtd -q -o -f &
compton &
sleep 2 && xfsettingsd &
thunar --daemon &
# Trayed applications
pnmixer &
dropboxd &
# sleep 60 && gmail-notify &
${HOME}/bin/gmail-icon &
ibus-daemon --xim --replace --daemonize &
batterymon &

# Literal startup apps
#pidgin &
subl &
#xfce4-terminal -e weechat-curses &
#xfce4-terminal -e ncmpcpp &

# The window manager itself.
exec awesome
#exec awesome -c /etc/xdg/awesome/rc.lua
