#!/bin/bash
echo "Modifying array elements"
nums=(1 89 78 45 34 21)
for ((i = 0; i < ${#nums[@]}; i++))
do
    $(( nums[i]++ ))
done

echo "${nums[@]}"
