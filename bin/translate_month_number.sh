#!/bin/bash

# Prompt the user for a month number and store it in a variable.
echo "Enter a month number:"
read month_number

# Translate the month number into a month name.
case $month_number in
  1)  month_name="January" ;;
  2)  month_name="February" ;;
  3)  month_name="March" ;;
  4)  month_name="April" ;;
  5)  month_name="May" ;;
  6)  month_name="June" ;;
  7)  month_name="July" ;;
  8)  month_name="August" ;;
  9)  month_name="September" ;;
  10) month_name="October" ;;
  11) month_name="November" ;;
  12) month_name="December" ;;
esac

# Display the result to stdout.
#
if [ -z $month_name ] ; then
  echo "Invalid month number: must be from 1 through 12"
else
  echo "Month #$month_number is $month_name"
fi
