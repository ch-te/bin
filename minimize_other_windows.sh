#!/usr/bin/env bash

active_window_id=$(xdotool getactivewindow)
for window_id in $(xdotool search --onlyvisible ".*")
do
    if [ $window_id != $active_window_id ]
    then
        xdotool windowminimize $window_id
    fi
done

xdotool getactivewindow windowmove 515 0
xdotool getactivewindow windowsize 2095 100%

# xdotool key super+ctrl+shift+alt+a
