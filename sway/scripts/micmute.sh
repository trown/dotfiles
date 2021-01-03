#!/bin/bash

light_on=$(sudo light -Grs "sysfs/leds/platform::micmute")

if [[ $light_on == 0 ]]; then
  sudo light -Srs "sysfs/leds/platform::micmute" 1
else
  sudo light -Srs "sysfs/leds/platform::micmute" 0
fi

pamixer -t --default-source