#!/bin/bash
xrdb -merge ~/.Xresources
killall xscreensaver
xscreensaver -no-splash &
