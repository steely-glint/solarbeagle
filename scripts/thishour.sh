#!/bin/sh 
NOW=`date +v-%F-%H`
redis-cli zrange $NOW 0 -1 WITHSCORES
