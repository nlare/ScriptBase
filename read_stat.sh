#!/bin/bash
awk '/sda1/ {print $6 / 2 / 1024 }' /proc/diskstats
