#!/bin/bash

bat=`cat /sys/class/power_supply/BAT0/status`
if  [ "$bat" == "Charging" ]; then
  echo " $(cat /sys/class/power_supply/BAT0/capacity)%"
else 
  echo " $(cat /sys/class/power_supply/BAT0/capacity)%"
fi
