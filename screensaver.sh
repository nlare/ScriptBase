#!/bin/bash
#uname -r
#while true; do sensors; sleep 5; clear; done
T[0]=0
uptime
echo ""
for i in 2 3 4 5; do echo -n "Core $((${i}-1)): "; T[$i]=`cat /sys/devices/platform/coretemp.0/hwmon/hwmon0/temp${i}_input`; echo Temp: $((${T[$i]}/1000))C; done
echo ""
echo "GPU: Temp: `/home/nlare/_scripts/amd_temp.sh`C"
echo ""

