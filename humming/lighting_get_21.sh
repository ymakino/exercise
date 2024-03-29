#!/bin/sh

NUM=21

if [ \! -d /sys/class/gpio/gpio${NUM} ]; then
  echo ${NUM} > /sys/class/gpio/export
  sleep 0.5
  echo out > /sys/class/gpio/gpio${NUM}/direction
fi

VALUE=`cat /sys/class/gpio/gpio${NUM}/value`

if [ $VALUE -eq 1 ]; then
  echo 30
else
  echo 31
fi
