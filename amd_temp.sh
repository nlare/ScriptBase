#!/bin/bash
#sensors | grep radeon -A 2 | grep temp1 | cut -b 16-17 # OSS radeon driver
sensors | awk '/amdgpu/ {y=1;next}y' | awk 'NR==2{print $2}' | cut -b2-3 #AMDGPU
