#!/bin/bash

# Now play about with creating a script which will behave as a filter. Create a script which will rearrange the output of the command ls -l in a useful way (eg maybe you only print the filename, size and owner) (Hint: awk can be useful here).

DATAX=`cat /dev/stdin`
LAST=`echo "$DATAX" | wc -l`

echo "$DATAX" | sed -n "2,$LAST p" | awk '{print "name: " $9, "size: " $5, "owner: " $3}'
