#!/bin/sh
# shellcheck disable=1090,2154
# Give a battery name (e.g. BAT0) as an optional argument.
# TODO: Add support for multiple batteries.

[ "$1" ] && bat_dev=$1 || bat_dev="BAT0"

[ -d /sys/class/power_supply/$bat_dev ] || exit 1

case $BLOCK_BUTTON in
    1) # Left Click
        ;;
    2) # Middle Click
        ;;
    3) # Right Click
        ;;
esac

#   full battery
#   almost full battery
#   half full battery
#   low battery
#   no battery/dead

# capacity=$(echo scale=4\;$(cat /sys/class/power_supply/BAT0/charge_now)/$(cat /sys/class/power_supply/BAT0/charge_full)\*100 | bc | sed 's/0\{1,\}$//') || exit
# kernelcapacity=$(cat /sys/class/power_supply/$bat_dev/charge_now)
# kernelalarm=$(cat /sys/class/power_supply/$bat_dev/alarm)

. ~/.cache/wal/colors.sh

blockcolor=$color2
txtcolor=$color8

capacity=$(cat /sys/class/power_supply/$bat_dev/capacity)
if [ "$capacity" -ge 90 ]; then
    color=$color7
    icon=" "
elif [ "$capacity" -ge 60 ]; then
    color="#ffffff"
    icon=" "
elif [ "$capacity" -ge 40 ]; then
    color="#ffff00"
    icon=" "
elif [ "$capacity" -ge 10 ]; then
    color="#ff0000"
    icon=" "
else
    color="#ff0000"
    icon=" "
fi

[ "$(cat /sys/class/power_supply/$bat_dev/charge_now)" -ge \
	"$(cat /sys/class/power_supply/$bat_dev/alarm)" ] &&
    alarm="" || alarm="❗"

case "$(cat /sys/class/power_supply/$bat_dev/status)" in
    Full)
        statusicon="="
        ;;
    Charging)
        statusicon=\+
        statuscolor="#00ff00"
        ;;
    Discharging)
        statusicon="-"
        statuscolor="#ff0000"
        ;;
    Unknown)
        statusicon=\*
        ;;
    'Not Charging')
        statusicon=\!
        ;;
esac

# printf "<span color='%s'>%s</span><span color='%s'>%s</span>\n" "$color" "$alarm$capacity%" "$statuscolor" "$statusicon $icon"
printf "<b><span foreground='%s' background='%s'></span>" \
	"$blockcolor" "$color0"
printf "<span foreground='%s' background='%s'> %s</span>" \
	"$color" "$blockcolor" "${alarm}${icon}${capacity}%"
printf "<span foreground='%s' background='%s'>%s </span>" \
	"$statuscolor" "$blockcolor" "${statusicon}"
printf "<span foreground='%s' background='%s'></span></b>\n" \
	"$color0" "$blockcolor"
