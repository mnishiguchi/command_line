#!/bin/bash

# Ask the user for a directory name to be created.
echo "Enter the directory name to be created:"
read dirname

# Create that directory and CD into it.
mkdir $dirname
cd ./$dirname

# Tell the user the currently working directory.
echo "Moving into $( pwd )"

# Create a few files
touch index.html
echo "# $dirname" > README.md
echo ".DS_Store" > .gitignore

# Initialize git
git init
git add -A
git commit -m "Initial commit"

# Announce the filenames
ls -hartl

# Tell the user that this script is done.
echo "Done!"
