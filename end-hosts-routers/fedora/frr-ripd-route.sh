#!/bin/bash -x

TEMPFILE=`mktemp`

echo "router rip
route $1
!
" > $TEMPFILE

chmod +x $TEMPFILE

vtysh -d ripd -f $TEMPFILE

rm $TEMPFILE

