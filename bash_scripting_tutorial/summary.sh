#!/bin/bash
# A basic summary of ... whatever

echo Here is a summary of the bla bla:
echo ================================
echo

cat /dev/stdin | cut -d ' ' -f 2,3 | sort
