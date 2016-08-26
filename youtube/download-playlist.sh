#!/bin/bash
# $1 - URL to playlist
youtube-dl -i --extract-audio --audio-format mp3 $1
