#!/bin/bash
localport=$1
localhost=$2
remoteport=$3
user=$4
remoteaddress=$5
ssh -NL$localport:$localhost:$remoteport $user@$remoteaddress
