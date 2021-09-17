#!/bin/bash -x

while [[ `/usr/libexec/frr/frrinit.sh status | grep -ci "ripd: running"` != 1 ]]
do
    echo "Still waiting for FRR ripd to be launched on this host ..."
    sleep 1
done

while [[ `/usr/libexec/frr/frrinit.sh status | grep -ci "bgpd: running"` != 1 ]]
do
    echo "Still waiting for FRR bgpd to be launched on this host ..."
    sleep 1
done

while [[ `/usr/libexec/frr/frrinit.sh status | grep -ci "ospfd: running"` != 1 ]]
do
    echo "Still waiting for FRR ospfd to be launched on this host ..."
    sleep 1
done
