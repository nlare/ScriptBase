#!/bin/bash
Xephyr -br -ac -noreset -screen 1024x768x24 :1 & sleep 1; cd /net/NAS/games/Quake\ 3\ Arena ; DISPLAY=:1 ./quake3; read
