#!/bin/bash

while true; do
    ps -o pid,user,%mem,command ax | sort -b -k3 | awk '$3>0.5 {print "'$(date +%s)' '"$(date)"' ", $0}'  > $HOME/.cache/trackmemory/track.txt
    sleep 1
done
