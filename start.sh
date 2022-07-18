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

#launch "clockrc"
launch "systemrc"
launch "cpurc"
launch "memoryrc"
launch "diskrc"
launch "networkrc"
launch "others"
launch "gpurc"
launch "bateryrc"
#launch "calrc"


