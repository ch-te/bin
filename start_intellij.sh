#!/usr/bin/env bash

if wmctrl -xa IDEA; then
    ~/bin/minimize_other_windows.sh
else
  idea
fi
