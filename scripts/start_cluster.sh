#!/bin/bash

echo "Starting Cluster Services"

echo "Start ServiceA on VM1"
echo "python3 -m http.server 8000"

echo ""
echo "Start ServiceB on VM2"
echo "python3 -m http.server 8001"

echo ""
echo "Start Node Exporters"

echo ""
echo "Start Prometheus"

echo ""
echo "Verify Nginx Load Balancer"