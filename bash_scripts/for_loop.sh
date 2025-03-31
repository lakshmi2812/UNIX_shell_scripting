#!/bin/bash

arr=(Alpha Beta Gamma Delta Theta)
for i in ${!arr[@]}
do
    echo -e "\nElement $i: ${arr[$i]}"
done
