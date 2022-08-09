#!/bin/bash -x

TEMPFILE=`mktemp`

echo "router ospf
 area $1 auth
!
" > $TEMPFILE

chmod +x $TEMPFILE

vtysh -d ospfd -f $TEMPFILE

rm $TEMPFILE

