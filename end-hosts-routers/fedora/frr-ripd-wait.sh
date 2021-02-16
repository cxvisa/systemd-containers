#!/bin/bash -x

while [[ `/usr/lib/frr/frrinit.sh status | grep -ci "ripd: running"` != 1 ]]
do
    echo "Still waiting for FRR ripd to be launched on this host ..."
    sleep 1
done
