#!/bin/bash
#
echo "Enter the number:"
read number
fact=1  # Accumulator, initially set to smallest factorial 1.
i=1     # Start from 1.

# Repeat until the index becomes greater than the specified number.
while [ $i -le $number ]
do
  fact=$(( $fact * $i ))  # Multiply the accumulator by the index.
  i=$(( $i + 1 ))         # Increment the index by 1.
done

# Output the result.
echo "The factorial of $number is $fact"
