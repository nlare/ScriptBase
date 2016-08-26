#!/bin/bash
mkdir Phone 
ffmpeg -i $1 -f mp4 -s 960x640 -strict -2 Phone/$1
