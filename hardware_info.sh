#!/bin/bash
cat /proc/cpuinfo | grep 'model name' | uniq | awk ' {print $4,$5,$7}' 
cat /proc/cpuinfo | grep 'cpu MHz' | uniq | awk ' {print $4,$5,$7}' | awk -F "." '{print $1}'
cat /proc/meminfo | grep 'MemTotal' | awk ' {print $2/1000}' | awk -F "." '{print $1} '
lspci | grep 'VGA' | awk ' {print $9,$10,$11,$12,$13,$14,$15,$16}'
grep processor /proc/cpuinfo | wc -l
uptime | awk '{print $8,$9,$10}'
sudo dmidecode --type 17 | grep "Type:" | uniq | awk '{print $2}'
sudo radeontop -d - | sed 2q | awk '{print $26}' | awk -F "." '{print $1}' | sed -n '$p' | sed 's/^[ \t]*//'
