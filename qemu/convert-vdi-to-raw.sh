#!/bin/bash
qemu-img convert -f vdi -O raw $1 $2
