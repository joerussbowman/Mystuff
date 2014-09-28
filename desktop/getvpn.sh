#!/bin/sh
sudo route add -net 10.0.0.0 netmask 255.0.0.0 gw 192.168.1.60
sudo cp /etc/resolv.conf.vpn /etc/resolv.conf
