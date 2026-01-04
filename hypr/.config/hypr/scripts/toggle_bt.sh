#!/bin/bash
# If bluetuith is running, kill it. If not, start it.

if pgrep -x "bluetuith" > /dev/null; then
    pkill -x "bluetuith"
else
    alacritty --class bluetuith_float --title "bluetuith" -e bluetuith
fi
