#!/bin/bash

# Propmpt the user for the IP address and read it.
echo "Enter a sentence:"
read str1

echo "Enter another sentence:"
read str2

len1=${#str1}
len2=${#str2}

echo "First string:"
echo "  content: $str1"
echo "  length:  $len1"
echo "Second"
echo "  content: $str2"
echo "  length:  $len2"
