#!/bin/bash
#ssh root@192.168.0.1 -p22 ifconfig | awk '/pppoe/ {getline; print $2}' | cut -f2- -d':' 1> /tmp/wan-ip

COMMAND=`curl --connect-timeout 3 ipecho.net/plain > /tmp/wan_ip`

$COMMAND

if [ $? -ne 0 ]; then
	echo 0.0.0.0
else
	OUT=`cat /tmp/wan_ip; echo`
	echo $OUT
fi
