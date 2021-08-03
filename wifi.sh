#!/bin/bash

bssid=$(nmcli device wifi list | sed -n '1!p' | cut -b 9- |dmenu -p "Select Wifi :" -l 20|cut -d' ' -f1)
pass=$(echo "" | dmenu -p "ENter password :")
nmcli device wifi connect $bssid password $pass