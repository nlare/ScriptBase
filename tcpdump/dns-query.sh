#!/bin/bash
sudo tcpdump -n -C 100 -i eno1 -w /tmp/dns-log.pcap udp port 53 and src host 192.168.0.100
