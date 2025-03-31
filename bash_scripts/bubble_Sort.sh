#!/bin/bash
nums=(8 1 6 9 2 10 16 12 143 7)
function bubble_sort
{
    #initialize arr variable with the array passed as a parameter
    arr=$@
    for ((i = 0; i < ${#arr[@]}-1; i++))
    do
        for((j = 0; j < ${#arr[@]}-1; j++))
        do
            #if arr[j+1] > arr[j], swap the elements
            if (( ${arr[j]} > ${arr[j+1]} ))
            then
                #tmp=arr[j]
                tmp=${arr[$j]}
                echo "$tmp"
                #arr[j]=arr[j+1]
                arr[$j]=${arr[$j+1]}
                echo "${arr[$j]}"
                #arr[j+1]=tmp
                arr[$j+1]=$tmp
                echo "${arr[$j+1]}"
            fi
        done
    done
    echo "Original array: ${nums[@]}"
    echo "Sorted array: ${arr[@]}"

}
bubble_sort "${nums[@]}"
