#!/bin/bash
Xephyr :1 -ac -screen 1024x768x24 & sleep 1; cd /home/nlare/games/Warcraft\ III; DISPLAY=:1 wine Frozen\ Throne.exe -opengl; read
