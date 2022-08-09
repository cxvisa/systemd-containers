#!/bin/bash -x

TEMPFILE=`mktemp`

echo "interface $1
 ip ospf area $2 $3
!
" > $TEMPFILE

chmod +x $TEMPFILE

vtysh -d ospfd -f $TEMPFILE

rm $TEMPFILE

