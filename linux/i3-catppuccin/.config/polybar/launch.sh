#!/bin/sh

polybar-msg cmd quit

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar primary 2>&1 & disown
done
