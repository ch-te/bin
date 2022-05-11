#!/usr/bin/env bash

echo "                       "
echo "                       "
echo "====              ====="
echo "====    pacman    ====="
echo "====              ====="
doas pacman -Syup --print-format "%n"

echo "                       "
echo "                       "
echo "====              ====="
echo "====    pamac     ====="
echo "====              ====="
pamac checkupdates

echo "                       "
echo "                       "
echo "====              ====="
echo "====    nix       ====="
echo "====              ====="
nix-channel --update && nix-env -u --dry-run

echo "                       "
echo "                       "
echo "====              ====="
echo "====    flatpak   ====="
echo "====              ====="
echo "n" | flatpak update

echo "                       "
echo "                       "
echo "====              ====="
echo "====    snap      ====="
echo "====              ====="
echo "n" | doas snap refresh
