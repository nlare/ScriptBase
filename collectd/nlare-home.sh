#!/bin/bash

/usr/bin/rrdtool graph /home/nlare/_scripts/collectd/cpu0.png \
 -e now \
 -s 'end - 6 hours' \
 -S 60 \
 --title "CPU USAGE:" \
 --vertical-label "Percents" \
 --imgformat PNG \
 --slope-mode   \
 --lower-limit 0 \
 --upper-limit 100 \
 --rigid \
 -E \
 -i \
 --color SHADEA#FFFFFF \
 --color SHADEB#FFFFFF \
 --color BACK#CCCCCC \
 -w 600 \
 -h 150 \
 --interlaced \
# --font DEFAULT:8:/usr/local/share/rrdtool/fonts/ARIAL8.TTF \
# DEF:a=/var/lib/collectd/nlare-home.lan/cpu-0/cpu-idle.rrd:value:MAX \
# DEF:b=/var/lib/collectd/nlare-home.lan/cpu-0/cpu-system.rrd:value:AVERAGE \
 DEF:c=/var/lib/collectd/nlare-home.lan/cpu-0/cpu-user.rrd:value:MAX \
#LINE2:b#2cc320: \
# AREA:b#54eb48:System \
LINE2:c#e7ad4a: \
 AREA:c#ebd648:User

#LINE1:a#CCCCCC:Idle \

/usr/bin/rrdtool graph /home/nlare/_scripts/collectd/network0.png \
 -e now \
 -s 'end - 6 hours' \
 -S 60 \
 --title 'Traffic on int_if: eno-1 (100Mb/s)' \
 --vertical-label 'Mbyte\s' \
 --imgformat PNG \
 --slope-mode   \
 --lower-limit 0 \
 --upper-limit 3500000 \
 --rigid \
 -E \
 -i \
 --color SHADEA#FFFFFF \
 --color SHADEB#FFFFFF \
 --color BACK#CCCCCC \
 -w 600 \
 -h 150 \
 --interlaced \
# --font DEFAULT:8:/usr/local/share/rrdtool/fonts/ARIAL8.TTF \
 DEF:a=/var/lib/collectd/nlare-home.lan/interface-eno1/if_packets.rrd:tx:MAX \
# DEF:b=/var/lib/collectd/nlare-home.lan/interface/if_octet.rrd:rx:MAX \
# DEF:c=/var/lib/collectd/nlare-home.lan/interface/if_errors-ng0.rrd:tx:MAX \
 AREA:a#4169E1:Tx \
#LINE2:b#2cc320: \
#AREA:b#54eb48:Rx \
#LINE1:c#FF0000:Errors

/usr/bin/rrdtool graph /home/nlare/_scripts/collectd/memory.png \
 -e now \
 -s 'end - 6 hours' \
 -S 60 \
 --title 'MEMORY USAGE: 12Gb' \
 --vertical-label 'Mbyte' \
 --imgformat PNG \
 --slope-mode   \
 --lower-limit 0 \
 --upper-limit 1048000000 \
 --rigid \
 -E \
 -i \
 --color SHADEA#FFFFFF \
 --color SHADEB#FFFFFF \
 --color BACK#CCCCCC \
 -w 600 \
 -h 150 \
 --interlaced \
# --font DEFAULT:8:/usr/local/share/rrdtool/fonts/ARIAL8.TTF \
 DEF:a=/var/lib/collectd/nlare-home.lan/memory/memory-active.rrd:value:MAX \
 DEF:b=/var/lib/collectd/nlare-home.lan/memory/memory-cache.rrd:value:MAX \
 DEF:c=/var/lib/collectd/nlare-home.lan/memory/memory-free.rrd:value:MAX \
 DEF:d=/var/lib/collectd/nlare-home.lan/memory/memory-inactive.rrd:value:MAX \
 DEF:e=/var/lib/collectd/nlare-home.lan/memory/memory-wired.rrd:value:MAX \
 LINE1:a#6959CD:active \
AREA:b#00FF00:cache \
LINE2:c#006400: \
AREA:c#00CD66:free \
AREA:d#FF1493:inactive \
LINE2:e#A52A2A: \
AREA:e#FF4500:wired
