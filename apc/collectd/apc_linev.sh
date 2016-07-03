#!/bin/bash

HOSTNAME="${COLLECTD_HOSTNAME:-localhost}"
INTERVAL="${COLLECTD_INTERVAL:-1}"

while sleep "$INTERVAL"; do
#while sleep 1; do
	VOLTAGE=$(apcaccess -p LINEV | awk '{print $1}')
	echo "PUTVAL $HOSTNAME/exec-apc/voltage-in interval=$INTERVAL N:$VOLTAGE"
done 

