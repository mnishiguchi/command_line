#!/bin/bash

# Propmpt the user for the IP address and read it.
echo "Enter the IP address"
read ip

# If the given IP address is not NULL, then
if [ ! -z $ip ] ; then

  # Ping the IP address.
  ping -c 1 $ip

  # Display a message based on the return value of the ping.
  if [ $? -eq 0 ] ; then
    echo "OK - Machine is giving ping response"
  else
    echo "NG - Machine is not pinging"
  fi

else
  echo "IP address is empty"
fi
