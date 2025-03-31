#!/bin/bash

#We are referring to the first argument passed to the script while running it as $1
echo ${1:-'Default argument value provided for the first argument'}
#Remember, := cannot be used with positional arguments. So, we are storing the first argument value in var
var=
echo ${var:='Variable "var" is undefined'}
#If var is undefined, ie., not passed, then return a messageand exit the script! Else, return a meaase that says that arguments has been received 
echo ${1:?'No argument passed!'}
echo ${1:+'Argument received'}
#Display a substring of the argument passed
echo ${1:0:2}


