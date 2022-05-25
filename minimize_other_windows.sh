#!/usr/bin/env bash

active_window_id=$(xdotool getactivewindow)
for window_id in $(xdotool search --onlyvisible ".*")
do
    if [ $window_id != $active_window_id ]
    then
        xdotool windowminimize $window_id
    fi
done

xdotool windowmove $active_window_id 500 0
xdotool windowsize $active_window_id 2060 100%

# xdotool key super+ctrl+shift+alt+a
