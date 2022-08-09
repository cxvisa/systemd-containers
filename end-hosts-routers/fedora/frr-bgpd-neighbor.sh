#!/bin/bash -x

TEMPFILE=`mktemp`

echo "router bgp $1
 neighbor $2 remote-as $3
 neighbor $2 update-source $4
!
" > $TEMPFILE

chmod +x $TEMPFILE

vtysh -d bgpd -f $TEMPFILE

rm $TEMPFILE

