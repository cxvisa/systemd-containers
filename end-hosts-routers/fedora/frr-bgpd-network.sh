#!/bin/bash -x

TEMPFILE=`mktemp`

echo "router bgp $1
 address-family ipv4 unicast
  network $2
 exit-address-family
!
" > $TEMPFILE

chmod +x $TEMPFILE

vtysh -d bgpd -f $TEMPFILE

rm $TEMPFILE

