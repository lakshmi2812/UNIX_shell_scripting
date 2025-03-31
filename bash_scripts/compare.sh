#!/bin/bash

#Comparison operators: ==, !=, >, <, >=, <= are comparison operators
#By default, these are used to compare numeric values. But, when we try to compare strings, the ASCII code is considered
#If true, result is 1, if false, result is 0.
# Example: Say a=8, b=9. a==b returns 0 as this is false. a!=b returns 1 as this is true.

a=8 b=9 c='A' d='a'
echo "Comparing a and b: "
echo "Result of ($a==$b): $(( a==b ))"
echo "Result of ($a!=$b): $(( a!=b ))"
echo "Result of ($a>$b): $(( a>b  ))"
echo "Result of ($a<$b): $(( a<b  ))"
echo "Result of ($a>=$b): $(( a>=b  ))"
echo "Result of ($a<=$b): $(( a<=b  ))"
#Comparing a with itself and comparing c and d
echo "Result of ($a==$a): $((a==a))"
echo "Result of ($c==$c): $((c==c))"
echo "Result of ($c==$d): $((c==d))"
echo "Result of ($c!=$d): $((c!=d))"
