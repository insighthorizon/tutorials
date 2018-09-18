#!/bin/bash

#Create a simple script wich will take two command line arguments and then multiply them together using each opf the methods detailed above
echo Using let:
let "RESULT = $1 * $2"
echo $RESULT
echo

echo Using expr:
expr $1 \* $2
echo

echo Using double parentheses:
echo $(( $1 * $2 ))
echo

#Let's write a script which will use this variable and some arithmetic to return a random number between 0 and 100
echo $(( $RANDOM % 101 ))
