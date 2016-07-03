#!/bin/bash
urxvt -e /usr/bin/linpack_runme_xeon64 &

while true; do
	cat ~/lin_xeon64.txt;
	sleep 5;
	clear;
done

