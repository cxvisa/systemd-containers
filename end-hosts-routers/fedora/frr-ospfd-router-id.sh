#!/bin/bash -x

TEMPFILE=`mktemp`

echo "router ospf
 ospf router-id $1
!
" > $TEMPFILE

chmod +x $TEMPFILE

vtysh -d ospfd -f $TEMPFILE

rm $TEMPFILE

