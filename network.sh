#!/bin/bash

# Define the network range to scan
# Adjust the IP range as needed (e.g., 192.168.1.0/24)
NETWORK_RANGE="192.168.1.0/24"

echo "Scanning network range: $NETWORK_RANGE"

# Use nmap to scan for live hosts
nmap -sn $NETWORK_RANGE | grep "Nmap scan report" | awk '{print $5}'

echo "Scan complete."
