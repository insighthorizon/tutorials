#!/bin/bash
# This is my script for directory analysis
# Script has one argument: the directory path
# Author: Marek Jiricek
# 7/9/2018

SCRIPTLOC=`readlink -f $0`
echo You have called $SCRIPTLOC

if [ $# != 1 ]; then
    echo Wrong number of arguments! I want just one directory.
    exit
elif [ ! -d $1 ]; then
    echo This is not direcotry!
    exit
fi

#convert to absolute path
LOCATION=`readlink -f $1`
echo ...Analyzing the directory "$LOCATION"
NUM_FIL=`ls -la $1 | grep '^-' | wc -l`
NUM_DIR=`ls -la $1 | grep -Ev '\s\.{1,2}$' | grep '^d' | wc -l`
echo This directory has $NUM_FIL of files.
echo This directory has $NUM_DIR of directories \(excludes . and ..\).

echo What is the biggest file in the $LOCATION?
FILES_ONLY=`ls -la $1 | grep -E '^-' | sed -E 's/\ +/\ /g'`
LIST=`paste <(echo "$FILES_ONLY" | cut -f 5 -d ' ') <(echo "$FILES_ONLY" | cut -f 9 -d ' ')`
SORTED=`echo "$LIST" | sort -gr`
RESULT=`echo "$SORTED" | head -1`
echo "$RESULT"
# now its time to look if there aren\'t multiple files of this same size (secure the collision)
COND=`echo "$SORTED" | wc -l`
if (( $COND > 1 )); then
    iter=2
    ISSAMESIZE=`echo "$SORTED" | head -$iter | tail -1`
    THIS=`echo "$RESULT" | grep -Eo '^[0-9]+'`
    while [ $(echo "$ISSAMESIZE" | grep -Eo '^[0-9]+') == $THIS ]
    do
	echo "$ISSAMESIZE"
	iter=$(($iter + 1))
	ISSAMESIZE=`echo "$SORTED" | head -$iter | tail -1`
    done
fi

echo What is the most recently modified or created file?
TIME_SORTED=`ls -lat $1 | grep -E '^-' | sed -E 's/\ +/\ /g'`
LIST=`paste <(echo "$TIME_SORTED" | cut -f 6 -d ' ') <(echo "$TIME_SORTED" | cut -f 7 -d ' ') <(echo "$TIME_SORTED" | cut -f 8 -d ' ') <(echo "$TIME_SORTED" | cut -f 9 -d ' ')`
RESULT=`echo "$LIST" | head -1`
echo "$RESULT"
# secure the collision
COND=`echo "$LIST" | wc -l`
if (( $COND > 1 )); then
    iter=2
    ISSAMETIME=`echo "$LIST" | head -$iter | tail -1`
    THAT=`echo $RESULT | sed -E 's/\ [^\ ]+$//g'`
    while [ "$(echo $ISSAMETIME | sed -E 's/\ [^\ ]+$//g')" == "$THAT" ]
    do
	echo "$ISSAMETIME"
	iter=$(($iter + 1))
	ISSAMETIME=`echo "$LIST" | head -$iter | tail -1`
    done
fi

echo A list of people who own files in $SCRIPTLOC:
LIST=`echo "$FILES_ONLY" | cut -f 3 -d ' ' | sort | uniq`
echo "$LIST"

echo Analysis succesfuly completed.
