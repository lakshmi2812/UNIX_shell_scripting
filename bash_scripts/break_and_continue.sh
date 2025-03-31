#!/bin/bash

#Breaking out of a nested for loop. The inner loop should break. The outer loop should continue
#Break statament with example. Notice how inner loop is broken with the break statement
echo "Break statement with example: "
for ((i=1; i<4; i++))
do
    for((j=1; j<4; j++))
    do
        if (( i == 2 && j == 2  ))
        then
            echo "Inner loop broken!"
            break
        fi
        echo -e "Outer: $i, \tInner: $j"
    done
done
echo "Continue statemnet with example: "
#Notice how inner loop is not exited completely, and only one iteration of the loop satisfying the condition is broken
for ((i=1; i<4; i++))
do
    for((j=1; j<4; j++))
    do
        if (( i == 2 && j == 2  ))
        then
            echo "Inner loop broken!"
            continue
        fi
        echo -e "Outer: $i, \tInner: $j"
    done
done

