#!/bin/bash
# demonstrate variable scope 1.

var1=blah
var2=foo

#let's see their current value
echo $0 :: $var1 : $var1, var2 : $var2


export var2
./script2.sh

echo $0 :: $var1 : $var1, var2 : $var2
