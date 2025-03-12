#!/bin/bash

ENABLED=$(git config --get local.prefix.enabled)
if [ "$ENABLED" != "true" ]; then
    exit 0
fi

current_hour=$(date "+%H")

if [ "$current_hour" -ge 16 ] || [ "$current_hour" -lt 8 ]; then
    prefix="🍺"
else
    prefix="☕️"
fi

timestamp=$(date "+%Y-%m-%d %H:%M")
echo "$prefix $(cat "$1")" > "$1"
