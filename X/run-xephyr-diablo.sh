#!/bin/bash
Xephyr :1 -ac -screen 800x600x16 & sleep 1; cd /home/nlare/games/Diablo\ II; DISPLAY=:1 wine Diablo\ II\ Rus.exe; read
