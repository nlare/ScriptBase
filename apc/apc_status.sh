#!/bin/bash

if [ ! -d "/tmp/apc" ]; then
	mkdir /tmp/apc
fi

apcaccess -h 192.168.0.102 -p STATUS > '/tmp/apc/status'


