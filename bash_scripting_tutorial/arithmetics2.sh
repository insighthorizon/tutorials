#!/bin/bash

# take two arguments as range and output random number from that range

RANGEX=$(( $2 - $1 + 1))
echo $(( $RANDOM % $RANGEX + $1))
