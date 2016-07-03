#!/bin/bash
# $1 - Path to vdi, $2 - size in Mb
vboxmanage modifyhd $1 --resize $2
