#!/bin/bash
#X11VNCRUN=`x11vnc -no6 -noipv6 -reopen  -rfbport 5900 -bg -ncache 10 -ncache_cr -dontdisconnect -forever -notruecolor -usepw -cursor arrow -display :0`
X11VNCRUN='x11vnc -no6 -noipv6 -reopen -rfbport 5900 -bg -dontdisconnect -forever -notruecolor -ncache_cr -usepw -cursor arrow -display :0'
$X11VNCRUN
