#!/bin/bash
freshclam -l /home/nlare/_adm/clamav/clamav-update.log
#clamdscan --multiscan --fdpass -i -r --bell --max-dir-recursion 50 --remove --move /home/nlare/_adm/clamav/infected/ --log /home/nlare/_adm/clamav/clamav.log $1
clamdscan --multiscan --fdpass -i --remove --move /home/nlare/_adm/clamav/infected/ --log /home/nlare/_adm/clamav/clamav.log $1
