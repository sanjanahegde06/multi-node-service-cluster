#!/bin/bash

curl -s http://192.168.232.128:8000 > /dev/null

if [ $? -eq 0 ]
then
    echo "Primary Server Running"
    curl http://192.168.232.128:8000
else
    echo "Primary Down - Switching to Backup"
    curl http://192.168.232.129:8001
fi