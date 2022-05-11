#!/usr/bin/env bash


CURRENTDATE=`date +"%Y-%m-%d"`
# echo Date is: ${CURRENTDATE}
# echo Date is: `date +"%Y-%m-%d"`

mv .emacs.d .emacs.d.${CURRENTDATE}
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
