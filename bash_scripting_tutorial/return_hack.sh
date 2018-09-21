#!/bin/bash
# Using output from function through command substitution

lines_in_file()
{
    cat $1 | wc -l
}

num_lines=`lines_in_file $1`
echo The file $1 has $num_lines lines in it.
