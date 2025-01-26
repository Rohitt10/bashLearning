#!/bin/bash

# Function to check CPU usage
check_cpu() {
  echo "CPU Load: $(uptime | awk -F'load average:' '{ print $2 }' | sed 's/,//')"
}

# Function to check memory usage
check_memory() {
  echo "Memory Usage: $(free -h | grep Mem | awk '{print $3 "/" $2 " (" $3/$2*100 "%" ")"}')"
}

# Function to check disk space usage
check_disk() {
  echo "Disk Usage:"
  df -h --total | grep 'total' | awk '{print $3 " / " $2 " (" $5 " used)"}'
}

# Function to check network interfaces and their status
check_network() {
  echo "Network Status:"
  ifconfig | grep -E 'inet|en|eth|wlan' | awk '{print $1 " " $2}'
}

# Start the health check
echo "System Health Check - $(date)"
echo "------------------------------"
check_cpu
check_memory
check_disk
check_network
echo "------------------------------"

