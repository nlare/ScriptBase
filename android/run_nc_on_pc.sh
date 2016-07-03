#!/bin/bash
# $1 - full path of backup dir
# $2 - name of backup file

if [ $1 = "" ]; then
	echo Set first arg! Full path to dir of backups
fi

if [ $2 = "" ]; then
	echo Set second arg! backup filename
fi

#if ([ $1 != "" ] or [ $2 != "" ]); then
	cd $1
	nc 127.0.0.1 -p 5555 | pv -i 0.5 > $2
	exit 0
#fi
