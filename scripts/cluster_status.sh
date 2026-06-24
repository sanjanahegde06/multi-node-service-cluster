#!/bin/bash

echo "===== MULTI NODE CLUSTER STATUS ====="
echo ""

echo -n "Service A: "
curl -s http://192.168.232.128:8000 > /dev/null && echo "UP" || echo "DOWN"

echo -n "Service B: "
curl -s http://192.168.232.129:8001 > /dev/null && echo "UP" || echo "DOWN"

echo -n "Node Exporter VM1: "
curl -s http://192.168.232.128:9100/metrics > /dev/null && echo "UP" || echo "DOWN"

echo -n "Node Exporter VM2: "
curl -s http://192.168.232.129:9100/metrics > /dev/null && echo "UP" || echo "DOWN"

echo -n "Prometheus: "
curl -s http://192.168.232.129:9090 > /dev/null && echo "UP" || echo "DOWN"

echo -n "Grafana: "
curl -s http://192.168.232.129:3000 > /dev/null && echo "UP" || echo "DOWN"

echo ""
echo "Cluster Check Complete"