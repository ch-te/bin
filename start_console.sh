#!/usr/bin/env bash

if wmctrl -xa alacritty; then
    ~/bin/minimize_other_windows.sh
else
  alacritty
fi
