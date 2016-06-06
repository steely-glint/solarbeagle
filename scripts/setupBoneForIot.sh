#!/bin/bash
sleep 10
while [ ! -d /sys/devices/bone_capemgr.* ]
 do
 sleep 1
 done
echo cape-bone-iio > /sys/devices/bone_capemgr.*/slots
find /sys -name "AIN1" -print 
su - volt -c 'nohup java -Djava.net.preferIPv4Stack=true -jar thingbone-1.0-SNAPSHOT.jar >thing.out &'
exit 0
