#!/bin/bash
nums=(89 12 6 10 23)
function print_array
{
    arr=("$@")
    echo "Array: ${arr[@]}"
    for ((i = 0; i < ${#arr[@]}-1; i++))
    do
        if (( ${arr[i]} < 10  ))
        then
            tmp=${arr[$i]}
            ${arr[$i]}=(( arr[$i]}++ ))
            echo "$tmp"
        fi
    done
    echo "Final array: ${arr[@]}"
}

print_array ${nums[@]}
