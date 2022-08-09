#!/bin/bash -x

TEMPFILE=`mktemp`

echo "router bgp $1
 bgp router-id $2
!
" > $TEMPFILE

chmod +x $TEMPFILE

vtysh -d bgpd -f $TEMPFILE

rm $TEMPFILE

