#!/bin/bash
awk '/sda1/ {print $10 / 2 / 1024 }' /proc/diskstats
