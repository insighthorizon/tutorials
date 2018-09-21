#!/bin/bash
# A date is the first command Line argument

clean_date=`echo $1 | sed 's/[/:\^#]/-/g'`

echo "$clean_date"
