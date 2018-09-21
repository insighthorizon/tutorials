#!/bin/bash
#A bash script which will take a single command line argument (a directory) and will print each entry in that directory. If the entry is a file it will print its size. If the entry is a directory it will print how many items are in that directory.

for entry in $1/*; do
    if [ -e "$entry" ]; then
	if [ -d "$entry" ]; then
	    NFILES=`ls "$entry" | wc -l`
	    echo "`echo "$entry" | grep -Eo '[^/]+$'` - directory with $NFILES files"
	else
	    FSIZE=`ls -lh "$entry" | awk '{print $5}'`
	    echo "`echo "$entry" | grep -Eo '[^/]+$'` - file of size "$FSIZE"B"
	fi
    fi
done
