#!/bin/bash
# -w destructive write test
# -s show progress-bar
# -v be "verbose" and output bad sectors detected to stdout
sudo badblocks -wsv -o badblocks_map.txt $1
