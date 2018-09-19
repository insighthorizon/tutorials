#!/bin/bash
# A bash script which will accept a file as a command line argument and analyse it in certain ways. eg. permissions and will print message for certain possibilities

if [ -e $1 ]; then
    if [ -d $1 ]; then
	echo It is dirrectory.
    else
	echo It is a file.
    fi

    if [ -r $1 ]; then
	echo You have read permission for this file.
    fi
    if [ -w $1 ]; then
	echo You have write permission for this file.
    fi
    if [ -x $1 ]; then
	echo You have execute permisson for this file.
    fi
    
else
    echo That doesn\'t exist.

fi
