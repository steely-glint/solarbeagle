#!/bin/sh 
NOW=`date +v-%F-%H`
SCORE=`date +%s`
VOLT=`awk ' {print (11.0 * $1)/1000}' <  /sys/devices/ocp.3/helper.15/AIN5` 
redis-cli zadd $NOW $SCORE $VOLT > /dev/null
