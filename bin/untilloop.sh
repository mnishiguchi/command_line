#!/bin/bash
#

# Initilize a variable "number" to 0.
number=0
until [ $number -ge 10 ]
do
  echo "Number = $number"   # Display the number of this iteration.
  number=$(( $number + 1 )) # Increment the number by one.
done
