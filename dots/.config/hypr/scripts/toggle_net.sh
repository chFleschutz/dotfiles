#!/bin/bash

if pgrep -x "wifitui" > /dev/null; then
    pkill -x "wifitui"
else
    alacritty --class network_widget --title "Wifi" -e wifitui
fi
