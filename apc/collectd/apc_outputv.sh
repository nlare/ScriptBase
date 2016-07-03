#!/bin/bash

HOSTNAME="${COLLECTD_HOSTNAME:-localhost}"
INTERVAL="${COLLECTD_INTERVAL:-1}"

while sleep "$INTERVAL"; do
#while sleep 1; do
	VALUE=$(apcaccess -p OUTPUTV | awk '{print $1}')
	echo "PUTVAL $HOSTNAME/exec-apc/voltage-out interval=$INTERVAL N:$VALUE"
done 

