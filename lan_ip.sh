#!/bin/bash
#hostname --ip-addr
ip route get 8.8.8.8 | awk '{print $NF; exit}'
