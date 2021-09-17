#!/bin/bash -x

sed -i "s/^ripd=no$/ripd=yes/g" /etc/frr/daemons
sed -i "s/^bgpd=no$/bgpd=yes/g" /etc/frr/daemons
sed -i "s/^ospfd=no$/ospfd=yes/g" /etc/frr/daemons

systemctl enable frr
