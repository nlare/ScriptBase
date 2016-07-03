#!/bin/bash
# $1 - USENAME
# $2 - IP or Network Name 
# $3 - Shared Resource 
# How to check net resources? Run smbclient -L $IP -U$USER
sudo mount -t cifs -o username=$1,uid=1000,gid=1000,workgroup=WORKGROUP //$2/$3 /media/SMB
