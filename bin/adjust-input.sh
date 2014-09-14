# Adjust DeathAdder
ids=$(xinput --list | awk -v search="Razer Razer DeathAdder 2013" \
    '$0 ~ search {match($0, /id=[0-9]+/);\
                  if (RSTART) \
                    print substr($0, RSTART+3, RLENGTH-3)\
                 }'\
     )

for i in $ids
do
    xinput set-prop $i 'Device Accel Profile' -1
    xinput set-prop $i 'Device Accel Constant Deceleration' 1.7
    xinput set-prop $i 'Device Accel Velocity Scaling' 1.0
done

# Adjust logitech derpmouse
xinput set-prop "Logitech Optical USB Mouse" "Device Accel Profile" -1

# Adjust keyboard repeat
xset r rate 200 30

# Set compose key
setxkbmap -option compose:ralt

# Adjust touchpad
#synclient MinSpeed=2.0
#synclient MaxSpeed=2.0
#synclient HorizHysteresis=0
#synclient VertHysteresis=0
#synclient AccelFactor=0

# razer
razercfg -r 16

# Wacom
xsetwacom --set "Wacom Intuos S Pen stylus" Area "0 0 9562 5376"
xsetwacom --set "Wacom Intuos S Pen stylus" Suppress 0
xsetwacom --set "Wacom Intuos S Pen stylus" RawSample 
