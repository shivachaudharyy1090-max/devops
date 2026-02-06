#!/bin/bash

systemctl is-active nginx > /dev/null

if [ $? -eq 0 ]; then
    echo "nginx is running"
else
    echo "nginx is DOWN"
fi

