#!/bin/bash

# Define the options
options="    Shutdown\n 󰜉   Reboot\n 󰤄   Suspend\n 󰗼   Log Out\n    Lock"

# Launch Rofi and capture the selection
choice=$(echo -e "$options" | walker -d -n -i)

case $choice in
    0) poweroff ;;
    1) reboot ;;
    2) systemctl suspend ;;
    3) hyprctl dispatch exit ;;
    4) hyprlock ;; 
esac
