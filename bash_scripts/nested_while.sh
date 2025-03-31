#!/bin/bash
#Nested while loop
i=0
while ((i < 3))
do
    echo "Outer loop: $i"
    ((i++))
    #inner loop
    j=10
    while ((j < 12))
    do
        echo -e "\t Inner loop: $j"
        ((j++))
    done
done
