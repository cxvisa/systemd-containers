#!/bin/bash -x

TEMPFILE=`mktemp`

echo "router rip
network $1
!
" > $TEMPFILE

chmod +x $TEMPFILE

vtysh -d ripd -f $TEMPFILE

rm $TEMPFILE

