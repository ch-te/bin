#!/usr/bin/env bash

if wmctrl -xa emacs; then
    ~/bin/minimize_other_windows.sh
else
  emacs
fi
