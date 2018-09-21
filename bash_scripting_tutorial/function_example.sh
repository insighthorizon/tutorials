#!/bin/bash
# Basic function

print_something ()
{
    echo Hello "$1"
    return 255
}

export -f print_something

./function_scope.sh

