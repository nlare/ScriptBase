#!/bin/bash
vboxmanage internalcommands createrawvmdk -filename $1 -rawdisk $2
