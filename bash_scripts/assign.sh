#!/bin/bash

#Assigning values using the +=, -=, *=, /= and %= operators
#For example, a+=b will add a and b and assign the result back to a

a=8 b=4
echo "Assigned a=$a and b=$b"
((a+=b))
echo "Value of a after a+=b: $a"

((a-=b))
echo "Value of a after a-=b: $a"

((a*=b))
echo "Value of a after a*=b: $a"

((a/=b))
echo "Value of a after a/=b: $a"

((a%=b))
echo "Value of a after a%=b: $a"
