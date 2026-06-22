#!/bin/bash

while true
do
    curl -s http://localhost:8000 > /dev/null

    if [ $? -ne 0 ]
    then
        echo "$(date) - Service DOWN. Restarting..." >> recovery.log

        cd ~/serviceA
        nohup python3 -m http.server 8000 > /dev/null 2>&1 &
    fi

    sleep 30
done