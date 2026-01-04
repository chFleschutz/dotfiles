#!/bin/bash

WALLPAPER=$1

# 1. Check if an image was actually passed
if [ -z "$WALLPAPER" ]; then
    echo "No wallpaper provided."
    exit 1
fi

# 2. Generate colors with Pywal
wal -i "$WALLPAPER"

# 3. Refresh Waybar to pick up new Pywal colors
pkill -USR2 waybar

# 5. Send a notification with the thumbnail
notify-send "Theme Updated" "Colors synced to $(basename "$WALLPAPER")" -i "$WALLPAPER"
