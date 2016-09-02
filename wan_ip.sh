#!/bin/bash
#ssh root@192.168.0.1 -p22 ifconfig | awk '/pppoe/ {getline; print $2}' | cut -f2- -d':' 1> /tmp/wan-ip
curl ipecho.net/plain; echo
