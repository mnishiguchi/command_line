#!/bin/bash

# Prompt for a user's age.
echo "Please enter your age:"
read AGE

# Display the user's age group.
if [ $AGE -lt 20 ] || [ $AGE -ge 50 ] ; then
  echo "Sorry, you are out of the age range."
elif [ $AGE -ge 20 ] && [ $AGE -lt 30 ] ; then
  echo "You are in your 20's."
elif [ $AGE -ge 30 ] && [ $AGE -lt 40 ] ; then
  echo "You are in your 30's."
elif [ $AGE -ge 40 ] && [ $AGE -lt 50 ] ; then
  echo "You are in your 40's."
fi
