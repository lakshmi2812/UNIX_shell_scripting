#!/bin/bash

#We are going to try out the logical operators: logical AND &&, logical OR || and logical NOT !
#The way these operators work is very familiar to us. So, let us write example code right away!

tru=1 fal=0
echo "Logical AND &&: "
echo "Result of ($fal && $fal): $((fal && fal))"
echo "Result of ($fal && $tru): $((fal && tru))"
echo "Result of ($tru && $fal): $((tru && fal))"
echo "Result of ($tru && $tru): $((tru && tru))"

echo "Logical OR ||: "
echo "Result of ($fal || $fal): $((fal || fal))"
echo "Result of ($fal || $tru): $((fal || tru))"
echo "Result of ($tru || $fal): $((tru || fal))"
echo "Result of ($tru || $tru): $((tru || tru))"

echo "Logical NOT !:"
echo "Result of ($tru NOT !$tru): $(( !tru ))"
echo "Result of ($fal NOT !$fal): $(( !fal ))"
