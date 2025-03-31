#!/bin/bash

for ((i=0; i<3; i++))
do
    echo "Outer loop iteration: $i"
    for((j=0; j<2; j++))
    do
        echo -e "\tInner loop iteration: $j"
    done
done
