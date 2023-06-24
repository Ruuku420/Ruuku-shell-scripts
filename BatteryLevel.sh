#!/usr/bin/env sh
getBatteryLevel() {
        upower -i $(upower -e | grep 'BAT') \
                | grep --color=never -E "percentage" \
                | awk '{ print $2 }' 
}

echo "$(getBatteryLevel)"
