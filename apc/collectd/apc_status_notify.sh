#!/bin/bash

#HOSTNAME="${COLLECTD_HOSTNAME:-localhost}"
INTERVAL="${COLLECTD_INTERVAL:-10}"
TRIGGER=true
while sleep "$INTERVAL"; do
#while sleep 1; do
	STAT=$(apcaccess -h 192.168.0.102 -p STATUS)
	if [ $STAT = "ONLINE" ]; then
		if [ "$TRIGGER" = false ]; then 
			LOAD=`/home/nlare/data/_scripts/apc/apc_load.sh`
			TEXT="UPS+ALREADY+ONLINE.+LOAD+IS+$LOAD+WATT."
			echo "$TEXT" | mutt -s "UPS_STATUS" vereskanthem@gmail.com gw71@live.ru
#			URL="http://sms.ru/sms/send?api_id=c4737716-1151-2054-3d76-1bc246f3624c&to=89136797425&text=$TEXT"
#			curl $URL
		fi
		TRIGGER=true
	fi
	if [ $STAT = "ONBATT" ]; then
		if [ "$TRIGGER" = true ]; then 
			LOAD=`/home/nlare/data/_scripts/apc/apc_load.sh`
			TEXT="UPS+ON+BATTERY!+LOAD+IS+$LOAD+WATT."
			echo "$TEXT" | mutt -s "UPS_STATUS" vereskanthem@gmail.com gw71@live.ru
#			URL="http://sms.ru/sms/send?api_id=c4737716-1151-2054-3d76-1bc246f3624c&to=89136797425&text=$TEXT"
#			curl $URL 
		fi
		TRIGGER=false
	fi
#	echo "PUTVAL $HOSTNAME/exec-apc/temperature interval=$INTERVAL N:$TEMP"
done 

