#!/bin/bash

# Get current Wi-Fi SSID
SSID=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)

# If not connected, show "Disconnected"
if [ -z "$SSID" ]; then
    echo "WIFI: ⛔"
else
    echo "WIFI: $SSID"
fi

# On click, show a menu to connect/disconnect (optional)
if [ "$BLOCK_BUTTON" == "1" ]; then
    # open nmtui in terminal
    kitty -e nmtui
fi
