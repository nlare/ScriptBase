#!/bin/bash

if [ ! -d "/tmp/apc" ]; then
	mkdir /tmp/apc
fi

while true; do
	apcaccess -h 192.168.0.102 -p OUTPUTV | awk '{print $1}' > /tmp/apc/outputv
	sleep 5;
done

