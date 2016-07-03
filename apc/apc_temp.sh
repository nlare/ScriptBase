#!/bin/bash

if [ ! -d "/tmp/apc" ]; then
	mkdir /tmp/apc
fi

while true; do
	apcaccess -h 192.168.0.102 -p ITEMP | awk '{print $1}' > /tmp/apc/temp
	sleep 5;
done


