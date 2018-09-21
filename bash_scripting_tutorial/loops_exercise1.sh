#!/bin/bash
#Create a simple script which will print the numbers 1-10 and whether they are even or odd

for var in {1..10}; do
    if (( $var % 2 == 0 )); then
	echo "$var - it's even"
    else
	echo "$var - it's odd"
    fi
done

