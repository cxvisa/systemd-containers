#!/bin/bash -x

sed -i "s/^ripd=no$/ripd=yes/g" /etc/frr/daemons

systemctl enable frr
