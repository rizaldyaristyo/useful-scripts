#!/bin/bash
[[ $1 =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]] && echo "Valid IP address: $1" || echo "Invalid IP address." # Usage: is_ip.sh <your-ip>