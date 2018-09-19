#!/bin/bash
# and example

if [ 1 ] || [ 1 ] && [ 1 ] || ([ 1 ] && [  ]); then
    echo If condition evaluated as TRUE.
else
    echo If condition evaluated as FALSE.
fi
