#!/bin/bash
# crunch parametres: 8 8 - min, max lenth,  -t - regex, numeric - gen only numbers ( also can be ... ),   
crunch 9 9 -t %%%%%%%%% 0123456789* | pyrit -r $1 -e netwrk -i - attack_passthrough
