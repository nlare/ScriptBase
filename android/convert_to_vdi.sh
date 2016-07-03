#!/bin/bash
# $1 - full path to input file
# $2 - full path to output file
qemu-img convert -f raw -O vdi $1 $2
