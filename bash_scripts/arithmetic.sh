#!/bin/bash

a=8 b=4 result=0
echo "Assigned: a=$a b=$b"

(( result = a+b ))
echo "a+b=$result"

(( result=a-b ))
echo "a-b=$result"

(( result=a*b ))
echo "a*b=$result"

(( result=a/b ))
echo "a/b=$result"

(( result=a%b ))
echo "a%b=$result"

echo "Currently, value of a is: $((a++))"
echo "Value of a after incrementing: $a"

echo "Currently, value of a is: $((result=a--))"
echo "Value of a after decrementing: $a"
