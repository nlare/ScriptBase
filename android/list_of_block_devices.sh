#!/bin/bash
adb devices
( echo su; echo "busybox find /dev/block -iname mmc* -exec busybox fdisk -l {} \;" ) | adb shell
exit 0
