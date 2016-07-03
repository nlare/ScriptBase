#!/bin/bash
pgrep conky &>/dev/null
if [ $? -eq 0 ]; then 
	killall conky
fi

pgrep chromium &>/dev/null
if [ $? -eq 0 ]; then 
	sleep 0.5
	killall chromium
fi

pgrep subl3 &>/dev/null
if [ $? -eq 0 ]; then 
	sleep 0.5
	killall subl3
fi

pgrep urxvt &>/dev/null
if [ $? -eq 0 ]; then 
	sleep 0.5
	killall urxvt
fi

pgrep awesome &>/dev/null
if [ $? -eq 0 ]; then 
	sleep 0.5
	killall awesome
fi


#killall conky && sleep 1 && killall chromium && sleep 1 && killall urxvt && killall subl3 && killall awesome && shutdown -r now

