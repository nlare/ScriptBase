#!/bin/bash

HOSTNAME="${COLLECTD_HOSTNAME:-localhost}"
INTERVAL="${COLLECTD_INTERVAL:-1}"
COMM="$(apcaccess -p LOADPCT | awk '{print $1}')"
while sleep "$INTERVAL"; do
#while sleep 1; do
	echo 500/100*$(apcaccess -p LOADPCT | awk '{print $1}') | bc -l | cut -b1-5 > /tmp/apc_load_calc
	VALUE=$(cat /tmp/apc_load_calc)
	echo "PUTVAL $HOSTNAME/exec-apc/power interval=$INTERVAL N:$VALUE"
done 

