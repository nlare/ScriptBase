#!/bin/bash

if [ ! -d "/tmp/monitoring" ]; then
	mkdir /tmp/monitoring
fi

sudo radeontop -d - | sed 3q | sed -n '/gpu/p' | sed -r 's/.*gpu//; s/%,.*//' | sed -n '$p' | sed 's/^[ \t]*//' > /tmp/monitoring/amd-gpu-load
