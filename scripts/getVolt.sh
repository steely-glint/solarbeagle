#!/bin/sh
awk ' {print (11.0 * $1)/1000}' <  /sys/devices/ocp.3/helper.15/AIN5
