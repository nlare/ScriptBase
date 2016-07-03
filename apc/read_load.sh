#!/bin/bash

FILE="/tmp/apc/load"
SCRIPT=`/home/nlare/_scripts/apc/apc_load.sh`

function print_if_exist()	{
	
	cat $FILE
	return 0

}

function print_if_not_exist()	{

	echo "File not exist"
	return -1

}

exec $SCRIPT
		
if [[ -s $FILE ]]; then
	print_if_exist
else
	print_if_not_exist
fi
