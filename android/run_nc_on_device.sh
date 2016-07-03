#!/bin/bash
# $1 - full path to block device for clone
adb devices
adb forward tcp:5555 tcp:5555
( echo su; echo busybox  nc -l -p 5555 -e busybox dd if=$1 ) | adb shell
