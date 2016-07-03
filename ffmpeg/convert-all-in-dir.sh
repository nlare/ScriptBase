#!/bin/bash
# Run script in dir of video files!
# Script convert to mkv with h264 video codec and mp3 audio codec
#for f in * ; do ffmpeg -i $f -vcodec h264 -acodec aac `echo $f | awk -F"." '{ print $1 ".converted.mkv" }'` ; done
for f in * ; do /opt/ffmpeg/bin/ffmpeg -i $f -vcodec h264 -acodec aac `echo $f | awk -F"." '{ print $1 ".converted.mkv" }'` ; done
