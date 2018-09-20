#!/bin/bash
# Make a backup set of files



for value in $1/*; do
    used=`df $1 | sort -n | head -1 | awk '{ print $5 }' | sed 's/%//'`
    if [ $used -gt 50 ]; then
	echo 'Low disk space' 1>&2
	break
    else
	if [ ! -d $1/backup ]; then
		mkdir $1/backup
	fi
    fi
    
    cp $value $1/backup/
done
	     
