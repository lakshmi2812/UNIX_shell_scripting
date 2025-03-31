#!/bin/bash
#Take a number and a string. Print the number and the string on if they are non-zero and non-empty respectively

num=0
echo -n "Enter a number greater than 0: "
read num

name=''
echo -n "Enter a name: "
read name

if [[ $name != '' && $num -ne 0 ]]
then
    echo "Welcome, $name, you won $num dollars!"
fi

