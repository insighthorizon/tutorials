#!/bin/bash

# takes one argument - path to compied file
# creates copy with date added to file name




for ARG in "$@"; do
FILEPATH=`echo "$ARG" | sed -r 's/[^\/]+$//g'`
SUFFIX=`echo "$ARG" | grep -Eo '\.[^\.]*$'`
FILENAME=`echo $ARG | grep -Eo '[^\/]+$' | sed -r "s/$SUFFIX//g"`

echo "$FILEPATH"
echo "$FILENAME"
echo "$SUFFIX"
cp -v "$ARG" "$PATHO${FILENAME}_`date +%F%T`$SUFFIX"
done
