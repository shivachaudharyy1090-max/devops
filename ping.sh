#!/bin/bash

PING_TARGET="8.8.8.8"

ping -c 2 $PING_TARGET > /dev/null

if [ $? -eq 0 ]; then
    echo " Internet is Working"
else
    echo "No Internet Connection"
fi
