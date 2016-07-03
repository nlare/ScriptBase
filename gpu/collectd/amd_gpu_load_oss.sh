#!/bin/bash

HOSTNAME="${COLLECTD_HOSTNAME:-localhost}"
INTERVAL="${COLLECTD_INTERVAL:-10}"

while sleep "$INTERVAL"; do
	VALUE=$(cat /tmp/monitoring/amd-gpu-load)
	echo "PUTVAL $HOSTNAME/exec-gpu/percent-gpu interval=$INTERVAL N:$VALUE"
done
