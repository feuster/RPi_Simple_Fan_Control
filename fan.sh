#!/bin/bash
gpio -g mode 14 out
while true
  do
    temp=$(vcgencmd measure_temp)
    if [ ${temp:5:2} -gt 45 ] ; then
      gpio -g write 14 1
    else
      gpio -g write 14 0
    fi
    sleep 15
  done
