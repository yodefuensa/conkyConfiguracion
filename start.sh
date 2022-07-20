#!/bin/bash

#delay start prevents some scripts NOT from starting
sleep 5

DIR=~/.conky/


launch() {
    RUN=`ps aux | grep conky | grep $1`

    if [ -z "$RUN" ]; then
        conky -c $DIR$1 -q &
    fi
}

launch "systemrc"
launch "cpurc"
launch "memoryrc"
#for hybrid intel & nvidia
launch "gpurc"
#for AMD graphics
#launch "gpurcAMD"
launch "diskrc"
launch "networkrc"
launch "bateryrc"
#launch "bitcoin"
sh $HOME/.conky/spotify-conky/start.sh




