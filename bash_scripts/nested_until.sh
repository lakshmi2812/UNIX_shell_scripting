#!/bin/bash
i=0
until ((i > 2))
do
    echo "Outer loop: $i"
    ((i++))
    #nested until
    j=0
    until ((j > 2))
    do
        echo "Inner loop: $j"
        ((j++))
    done
done
