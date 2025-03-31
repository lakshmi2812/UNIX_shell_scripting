#!/bin/bash

#Take a number input
#If the number is not equal to zero, then, print it

num=0
echo -n "Enter a number greater than 0: "
read num

if [[ $num -ne 0  ]]
then
    echo "Received $num dollars"
fi

