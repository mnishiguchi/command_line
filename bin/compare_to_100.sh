#!/bin/bash

# Prompt the user for two numbers.
echo "Enter a number"
read number

if [ $number -eq 100 ]
then
    echo "The number is 100"
elif  [ $number -gt 100 ]
then
    echo "$number is greater than 100"
else
    echo "$number is less than 100"
fi
