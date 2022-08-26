#!/usr/bin/env bash

echo 'search fritz.box mshome.net
nameserver 192.168.1.1
nameserver fd00::7eff:4dff:fe70:df61' > /etc/resolv.conf

bat /etc/resolv.conf
echo
ip route del 100.64.0.0/10 dev enp47s0f3u3
echo
ip route | grep 100.64.0.0
