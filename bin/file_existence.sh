#!/bin/bash

# Accept the command line argument and store in "file1".
file=$1

# Check for its existence and if found true.
if [ -f $file ]
then
  echo -e "The $file exists"
else
  echo -e "The $file does not exist"
fi
