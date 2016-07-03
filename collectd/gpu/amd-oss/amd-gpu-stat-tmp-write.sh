#!/bin/bash

if [ ! -d "/tmp/monitoring" ]; then
	mkdir /tmp/monitoring
fi

sudo radeontop -d - | sed 3q | sed -n '/gpu/p' | sed -n '$p'  > /tmp/monitoring/amd-gpu-stat
