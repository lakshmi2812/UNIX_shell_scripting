#!/bin/bash

#Case statements example with seasons
echo -n "Enter a month number between 1-12:"
read month

case $month in 
   12|1|2)  echo "Winter!";;
   3|4|5)   echo "Spring!";;
   6|7|8)   echo "Summer!";;
   9|10|11) echo "Fall!";;
   *)   echo "Invalid month entered!";;
esac
