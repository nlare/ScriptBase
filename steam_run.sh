#!/bin/bash
# If you use ALSA instead pulseaudio remove libasound.so.* in those folders:
# ~/.steam/steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/
# ~/.steam/steam/ubuntu12_32/steam-runtime/amd64/usr/lib/x86_64-linux-gnu/
#
# To run steam use LD_PRELOAD variable
#LD_PRELOAD='/usr/$LIB/libstdc++.so.6' DISPLAY=:0 steam
LD_PRELOAD='~/.steam/steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libstdc++.so.6' DISPLAY=:0 steam
