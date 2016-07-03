#!/bin/bash

HOSTNAME="${COLLECTD_HOSTNAME:-localhost}"
INTERVAL="${COLLECTD_INTERVAL:-10}"

while sleep "$INTERVAL"; do
#while sleep 1; do
	TEMP=$(sensors | grep radeon -A 2 | grep temp1 | cut -b 16-17)
	echo "PUTVAL $HOSTNAME/exec-gpu/temperature interval=$INTERVAL N:$TEMP"
done 

