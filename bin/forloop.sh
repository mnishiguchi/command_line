#!/bin/bash

# Execute the ls command and iterate over the output of ls.
for filename in $(ls)
do
  # Retrieve extension available from each filename.
  ext=${filename##*\.}

  # Display a message based on the extension of the file.
  case "$ext" in
    c )   echo "$filename : C source file" ;;
    o )   echo "$filename : Object file" ;;
    sh )  echo "$filename : Shell script" ;;
    txt ) echo "$filename : Text file" ;;
    * )   echo "$filename : Unknown file type/Not processed" ;;

  esac
done
