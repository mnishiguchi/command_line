#!/bin/bash

# Check if exactly one argument is passed in.
if [ $# -eq 0 ] ; then
  echo "Error: must have one argument"
  exit 1
fi

# Display the argument that was passed in.
echo $1

exit 0
