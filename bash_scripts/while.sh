#!/bin/bash

arr=(Alpha Beta Gamma Delta)
i=0
while ((i < ${#arr[@]}))
do
    echo ${arr[$i]}
    ((i++))
done
