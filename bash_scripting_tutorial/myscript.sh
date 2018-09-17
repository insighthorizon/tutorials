#!/bin/bash
# Simple script to test bash functionality
# Author: Marek Jiricek
# Date: 14/9/2018 

echo Exit status of the most receently run process: $?
echo Path to this script: $0
echo Number of supplied arguments: $#
echo All of the arguments: $@
echo User running the script: $USER
echo Machine running the script: $HOSTNAME
echo Random number: $RANDOM
echo Current line number of the script: $LINENO
echo The script run $SECONDS seconds.
