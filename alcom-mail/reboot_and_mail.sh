#!/bin/bash

DATE=`/bin/date`
TO="To: vereskanthem@gmail.com\n"
FROM="From: alcom.monitoring.system@gmail.com\n"
SUBJECT="Subject: Alcom. Плановая перезагрузка SIP-сервера.\n"
MESSAGE="$TO$FROM$SUBJECT\nЗапущен процесс перезагрузки SIP-сервера...
Скоро придет сообщение о том, что он был корректно перезагружен.
$DATE"

/bin/echo -e $MESSAGE > MessageBeforeReboot.txt
#echo $MESSAGE
/usr/sbin/ssmtp vereskanthem@gmail.com < MessageBeforeReboot.txt
#shutdown -r 'Elastix reboot'
reboot
