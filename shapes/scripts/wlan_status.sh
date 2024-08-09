#!/bin/sh

IFACE=$(/usr/sbin/ifconfig | grep wlan0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "wlan0" ]; then
	echo "%{F#ffffff}  %{F#ffffff}$(/usr/sbin/ifconfig wlan0 | grep "inet " | awk '{print $2}')%{u-}"
else
	echo "%{F#ffffff} %{u-} Disconnected"
fi
