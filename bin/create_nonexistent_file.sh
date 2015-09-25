#!/bin/bash

echo "Enter a filename"
read filename

# If the file does not exist, create a new file.
if [ ! -e $filename ] ; then
  echo "$filename does not exist"
  echo "creating a new file: $filename"
  echo "Hello, world!!!" > $filename
else
  echo "$filename exists"
fi

# Output the word count.
wc $filename

# Do the ls, discard the information, and prevent both stdout and stderr from being displayed.
ls $filename > /dev/null 2>&1
# Output the status code of the ls.
status=$?
echo "status: $status"
