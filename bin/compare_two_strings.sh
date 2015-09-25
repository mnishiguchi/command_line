#!/bin/bash

# Get two strings as arguments.
str_1=$1
str_2=$2

# Reject if no argument is passed in.
if [ -z $str_1 ] ; then
  echo "Error: must have two strings as arguments"
  exit 1
fi

# Reject if only one argument is passed in.
if [ -z $str_2 ] ; then
  echo "The first string is ${#str_1}-char long"
  echo "The second string is zero length"
  exit 2
fi

# Get the lengths of the two strings.
len_1=${#str_1}
len_2=${#str_2}
echo "First  : $len_1"
echo "Second : $len_2"

# Compare the lengths and display the result.
if [ $len_1 -gt $len_2 ] ; then
  echo "The first string is longer than the second string"
elif [ $len_2 -gt $len_1 ] ; then
  echo "The second string is longer than the first string"
else
  echo "The two strings have equal length"
fi
