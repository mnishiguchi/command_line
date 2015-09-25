#!/bin/bash
echo "The name of the script being executed: $0"

if [ $# -eq 0 ] ; then
    echo "No argument passed"
elif [ $# -eq 1 ] ; then
    echo "The 1st argument passed: $1"
elif [ $# -eq 2 ] ; then
    echo "The 1st argument passed: $1"
    echo "The 2st argument passed: $2"
else
    echo "All of the arguments passed from the command line are: $*"
fi

echo
echo "All done with $0"
