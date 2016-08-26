#!/bin/bash
arecord -f cd -D hw:$1,0 $2
