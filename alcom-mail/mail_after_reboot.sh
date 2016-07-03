#!/bin/bash

DATE=`/bin/date`
TO="To: vereskanthem@gmail.com\n"
FROM="From: alcom.monitoring.system@gmail.com\n"
SUBJECT="Subject: Alcom. Плановая перезагрузка SIP-сервера.\n"
MESSAGE="$TO$FROM$SUBJECT\nСервер был перезагружен $DATE"

/bin/echo -e $MESSAGE > MessageAfterReboot.txt
#echo $MESSAGE
/usr/sbin/ssmtp vereskanthem@gmail.com < MessageAfterReboot.txt
/usr/sbin/ssmtp boss@alcom55.ru < MessageAfterReboot.txt
/usr/sbin/ssmtp tiunow@alcom55.ru < MessageAfterReboot.txt
