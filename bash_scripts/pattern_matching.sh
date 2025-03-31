#!/bin/bash

#Operators that help in matching patterns in a string either at the beginning or the end and remove the matched pattern from the string
#The syntx is {var#pattern} or {var##pattern} or {var%pattern} or {var%%pattern} or {var/pattern/string} or {var//pattern/string}

video='/media/mp4/perry.roar.mp4'

echo "The original string: $video"
echo ${video#/*/}
echo ${video##/*/}

echo ${video%.*}
echo ${video%%.*}

echo ${video/mp4/vid}
echo ${video/%mp4/vid}
echo ${video//mp4/vid}
