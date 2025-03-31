#!/bin/bash

echo -n "Enter hours of the day between 0-23: "
read hrs
#invalid hrs case
if [[ $hrs == "" || $hrs -gt 23 ]]
then
echo "Invalid hrs"
elif [[ $hrs -ge 0 && $hrs -lt 12 ]]
then
echo "Good Morning!"
elif [[ $hrs -ge 12 && $hrs -lt 18 ]]
then
echo "Good Afternoon!"
else
echo "Good Evening!"
fi
