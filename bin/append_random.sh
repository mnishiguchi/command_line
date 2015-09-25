#!/bin/bash

# Make sure the user passed in a word.
if [ $# -eq 0 ] ; then
  echo "Error: must pass in one word as an argument"
  exit 1
fi

# Appends a random number to the word that was passed in.
word=$1-$RANDOM

# Display it to the user
echo $word
