#!/usr/bin/env zsh
cd ${HOME}

# Settings
export EDITOR="vim"
export BROWSER="firefox"
#export DE="gnome"
export GTK_IM_MODULE="ibus"

xset m 8 3 &
xset r rate 180 58 &
xrdb -merge "${HOME}/.Xresources"
xmodmap "${HOME}/.Xmodmap"
wmname LG3D & # Fool Java apps
setxkbmap -option compose:ralt # compose key!

# Remove any leftover PULSE_SERVER from previous logins
# -- otherwise, it refuses to start at all
# (seriously who thought it was a good idea to leave
# crap in the root window)
xprop -root -remove PULSE_SERVER

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
unclutter -idle 1 -jitter 2 -root &
#mpd &
#urxvtd -q -o -f &
compton &
sleep 2 && xfsettingsd &
thunar --daemon &
# Trayed applications
pnmixer &
dropboxd &
gmail-notify &
ibus-daemon --xim &

# Sublime text on startup, just because.
subl &

# The window manager itself.
exec awesome
