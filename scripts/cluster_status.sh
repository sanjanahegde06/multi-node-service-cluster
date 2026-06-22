#!/bin/bash

echo "===== CLUSTER STATUS ====="

echo ""
echo "VM1 ServiceA:"
curl -s http://192.168.232.128:8000

echo ""
echo "VM2 ServiceB:"
curl -s http://192.168.232.129:8001

echo ""
echo "VM1 Node Exporter:"
curl -s http://192.168.232.128:9100/metrics > /dev/null

if [ $? -eq 0 ]
then
    echo "UP"
else
    echo "DOWN"
fi

echo ""
echo "VM2 Node Exporter:"
curl -s http://192.168.232.129:9100/metrics > /dev/null

if [ $? -eq 0 ]
then
    echo "UP"
else
    echo "DOWN"
fi