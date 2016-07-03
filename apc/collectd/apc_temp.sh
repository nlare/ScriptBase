#!/bin/bash

HOSTNAME="${COLLECTD_HOSTNAME:-localhost}"
INTERVAL="${COLLECTD_INTERVAL:-60}"

while sleep "$INTERVAL"; do
#while sleep 1; do
	TEMP=$(apcaccess -p ITEMP | awk '{print $1}')
	echo "PUTVAL $HOSTNAME/exec-apc/temperature interval=$INTERVAL N:$TEMP"
done 

