#!/bin/bash
arr=(Ramesh Suresh Mahesh Natesh)
i=0
until ((i == ${#arr[@]}))
do
    echo "${arr[$i]}"
    ((i++))
done
