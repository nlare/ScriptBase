#!/bin/bash
# $1 - torrent file name
# $2 - path to dir with files to share
mktorrent -v -l 21 -a udp://tracker.openbittorrent.com:80/announce,http://9.rarbg.com:2710/announce,http://announce.torrentsmd.com:6969/announce,udp://tracker.opentrackr.org:1337/announce -o $1.torrent $1
