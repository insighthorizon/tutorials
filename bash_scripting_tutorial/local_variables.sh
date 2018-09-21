#!/bin/bash
# Experimenting with variable scope

var_print ()
{
    echo Inside function called inside function: var1 is $var1 : var2 is $var2
}


var_change ()
{
    local var1='local 1'
    echo Inside function: var1 is $var1 : var2 is $var2
    var_print
    var1='changed again'
    var2='2 changed again'
    echo Inside function: var1 is $var1 : var2 is $var2
    var_print
}



var1='global 1'
var2='global 2'

echo Before function call: var1 is $var1 : var2 is $var2

var_change

echo After function call: var1 is $var1 : var2 is $var2
