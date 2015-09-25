#!/bin/bash

# Prompt the user for two numbers.
echo "Please enter first number"
read first
echo "Please enter second number"
read second

# Compare the two numbers and display the result.
if [ $first -eq 0 ] && [ $second -eq 0 ]
then
    echo "Both values are zero."
elif  [ $first -eq $second ]
then
    echo "Both values are $first."
elif  [ $first -gt $second ]
then
    echo "$first is greater than $second."
else
    echo "$first is lesser than $second."
fi
