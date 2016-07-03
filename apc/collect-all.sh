#!/bin/bash
/home/nlare/_scripts/apc/apc_status.sh &
sleep 0.1 &
/home/nlare/_scripts/apc/apc_load.sh &
sleep 0.1 &
/home/nlare/_scripts/apc/apc_outputv.sh &
sleep 0.1 &
/home/nlare/_scripts/apc/apc_linev.sh &
sleep 0.1 &
/home/nlare/_scripts/apc/apc_temp.sh 
