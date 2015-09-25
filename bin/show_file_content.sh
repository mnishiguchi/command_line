#!/bin/bash
#

# Prompt the user for a filename and store it in a variable.
echo -e "Enter absolute path of the filename you want to read:"
read filename

# Redirect stdin to a file.
exec <$filename  # The exec builtin command replaces the program and executes it.

# Repeat while a line of text exists, do the following:
while read line
do
  echo $line  # Display the line being read.
done
