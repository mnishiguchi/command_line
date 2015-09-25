#!/bin/bash

# Accept the command line argument and store in "name".
name=$1

# Declare a function to say hello to a specified person.
say_hello_to() {

  echo "Hello," $1 "!!!"

}

# Say hello.
say_hello_to $name
