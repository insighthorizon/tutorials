#!/bin/bash
# A simple demonstraion of using backticks
# Marek 5/9/2018

lines=`cat $1 | wc -l`
echo The number of lines in the file $1 is $lines
cat $0
