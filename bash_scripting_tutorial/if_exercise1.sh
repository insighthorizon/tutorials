#!/bin/bash
# A bash script which will take 2 numbers as command line arguments. It will print to the screen the larger of the two numbers.



if [ $1 -gt $2 ]; then
    echo $1
elif [ $1 -lt $2 ]; then
    echo $2
elif [ $1 -eq $2 ]; then
    echo $1 and $2 are equal
else
    echo Somethign went wrong.    
fi
