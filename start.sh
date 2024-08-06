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

launch "cpurc"
launch "systemrc"
launch "memoryrc"
launch "gpurc"
launch "diskrc"
launch "networkrc"
launch "bateryrc"
sh $HOME/.conky/spotify-conky/start.sh



