# Multi-Node Service Cluster

A personal hobby project built using VMware and Ubuntu to explore load balancing, monitoring, failover, and service recovery.

## Technologies Used

- VMware Workstation
- Ubuntu Linux
- Nginx
- Prometheus
- Grafana
- Node Exporter
- Bash
- Python HTTP Server

## Architecture

The project uses three Ubuntu virtual machines:

- **VM1:** Runs Service A and Node Exporter.
- **VM2:** Runs Service B, Prometheus, Grafana, and Node Exporter.
- **VM3:** Runs Nginx as a load balancer.

Nginx distributes incoming requests between the two backend services. Prometheus collects system metrics from both service VMs, and Grafana displays the metrics through dashboards.

## Features

- Load balancing between two backend services
- System monitoring using Prometheus and Node Exporter
- Grafana dashboards for CPU, memory, disk, and network metrics
- Bash scripts for service failover and automatic recovery
- Cluster health status checking

## Screenshots

Screenshots of the Grafana dashboards, Prometheus targets, load balancing, and recovery tests are available in the `screenshots/` folder.
