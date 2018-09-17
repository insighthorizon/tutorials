#!/bin/bash

# Bash scripting tutorial - 2. variables - Activities

# Call with one parameter : number - length of word
# Returns random word with given length (uses dictionary)

SUBDIC=`grep -E "^[^']{$1}('s)?$" /usr/share/dict/words`
NUMLIN=`echo "$SUBDIC" | wc -l`

echo "$NUMLIN"

MYRAND=`shuf -i 1-"$NUMLIN" -n 1`
echo $MYRAND

echo "$SUBDIC" | sed -n "$MYRAND"p
