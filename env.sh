#!/bin/bash
#!/bin/bash

PING_TARGET="8.8.8.8"
LOG_FILE="$HOME/netcheck.log"

ping -c 2 $PING_TARGET > /dev/null

Time=$(date "+%Y-%m-%d %H:%M:%S")

if [ $? -eq 0 ]; then
    echo "$Time  Internet is Working" >> $LOG_FILE
    echo " Internet is Working"
else
    echo "$Time  No Internet Connection" >> $LOG_FILE
    echo " No Internet Connection"
fi
