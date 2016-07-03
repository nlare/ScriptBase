#!/bin/bash

if [ ! -d "/tmp/apc" ]; then
	mkdir /tmp/apc
fi

while true; do
	echo 500/100*$(apcaccess -h 192.168.0.102 -p LOADPCT | awk '{print $1}') | bc -l | cut -b1-5 > /tmp/apc/load
	sleep 5;
done


