#!/bin/bash

# Define the options
options="   Power Off\n 󰜉  Reboot\n 󰤄  Suspend\n 󰗼  Log Out\n   Lock"

# Launch Rofi and capture the selection
chosen=$(echo -e "$options" | rofi -dmenu -i -p "System Action" -theme-str 'window {width: 15%;}')

case $chosen in
    "   Power Off") poweroff ;;
    " 󰜉  Reboot") reboot ;;
    " 󰤄  Suspend") systemctl suspend ;;
    " 󰗼  Log Out") hyprctl dispatch exit ;;
    "   Lock") hyprlock ;; # Or your preferred locker
esac
