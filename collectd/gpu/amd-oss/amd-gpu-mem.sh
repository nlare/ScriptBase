#!/bin/bash

HOSTNAME="${COLLECTD_HOSTNAME:-localhost}"
INTERVAL="${COLLECTD_INTERVAL:-10}"

while sleep "$INTERVAL"; do
	VALUE=$(cat /tmp/monitoring/amd-gpu-stat | sed 's/.*\(vram \)\(.*\)\(%\).*/\2/')
	echo "PUTVAL $HOSTNAME/exec-gpu/percent-gpu-memory interval=$INTERVAL N:$VALUE"
done
