#!/bin/bash
for f in * ; do ffmpeg -i "$f" -vn -ar 44100 -ac 2 -ab 320k -f mp3 "`echo $f | awk -F"." '{ print $1 ".mp3" }'`"; done
