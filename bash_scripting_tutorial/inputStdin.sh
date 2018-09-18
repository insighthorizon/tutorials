#!/bin/bash

#Create a script which will take data from STDIN and print the 3rd line only

sed -n '3 p' < /dev/stdin 
