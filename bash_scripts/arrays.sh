#!/bin/bash

#Arrays:

arr=(Tess Felicity Liam Will Lucy Mary)
echo "Array first element: ${arr[0]}"
echo "Array all elements: ${arr[@]}"
echo "Array all elements filled: ${!arr[@]}"
echo "Array length: ${#arr[@]}"

