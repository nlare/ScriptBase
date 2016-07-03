#!/bin/bash
# compacting vdi: cutt vdi's free space (initialized with zeroes), $1 - path to vdi
vboxmanage modifyhd $1 --compact
