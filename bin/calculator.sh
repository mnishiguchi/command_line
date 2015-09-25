#!/bin/bash

# Prompt the user for two numbers.
echo "Enter the first number"
read input_1
echo "Enter the second number"
read input_2

# Prompt the user for the type of the operation.
echo "1 - Addition"
echo "2 - Subtraction"
echo "3 - Multiplication"
echo -n "Please choose a word [1, 2 or 3]: "
read operator

# Do the calculation that is specified by the user, and display the result.
if [ $operator -eq 1 ]
then
    echo $input_1 '+' $input_2 "=" $(( $input_1 + $input_2 ))
else
    if [ $operator -eq 2 ]
    then
        echo $input_1 '-' $input_2 "=" $(( $input_1 - $input_2 ))
    else
        if [ $operator -eq 3 ]
        then
            echo $input_1 'x' $input_2 "=" $(( $input_1 * $input_2 ))
        else
            echo "Invalid input"
        fi
    fi
fi
