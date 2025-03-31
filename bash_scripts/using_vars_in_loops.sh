#!/bin/bash
var1="Unix in easy steps"
arr1=(Alpha Beta Gamma Delta Theta)

#Display the above variables in a function
function show_vars
{
    echo $var1
    echo ${arr1[@]}
}

var_c="C programming in easy steps"

#Function that takes var_c as a parameter and prints it to the console
function show_params
{
    str1=$@
    echo $str1
}

show_vars
show_params $var_c


