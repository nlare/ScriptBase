#!/bin/bash

# Use $1 to set what you want - backup or restore image
# Use $2 to set disk or part of the disk to backup
# $3 is to set location of backup .gz file

if [[ "$1" = "backup" ]]; then
	sudo dd if=$2 conv=noerror,sync bs=512 | gzip -c > $3
else
	if [[ "$1" = "restore" ]]; then
		sudo gunzip -c $2 | dd of=$3
	else
		echo "Nothing to do. Set correct arguments."
	fi
fi

