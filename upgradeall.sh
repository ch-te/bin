#!/usr/bin/env bash

echo "                       "
echo "                       "
echo "====              ====="
echo "====    pacman    ====="
echo "====              ====="
doas pacman -Syu

echo "                       "
echo "                       "
echo "====              ====="
echo "====    pamac     ====="
echo "====              ====="
pamac upgrade

echo "                       "
echo "                       "
echo "====              ====="
echo "====    nix       ====="
echo "====              ====="
nix upgrade-nix && nix-channel --update && nix-env -u

echo "                       "
echo "                       "
echo "====              ====="
echo "====    flatpak   ====="
echo "====              ====="
flatpak update

echo "                       "
echo "                       "
echo "====              ====="
echo "====    snap      ====="
echo "====              ====="
doas snap refresh

echo "                       "
echo "                       "
echo "====              ====="
echo "====    doom      ====="
echo "====              ====="
doom upgrade
