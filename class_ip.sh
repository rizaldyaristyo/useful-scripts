#!/bin/bash
if [[ $1 =~ ^10\.([0-9]{1,3}\.){2}[0-9]{1,3}$ ]]; then
    echo "Private Class A"
elif [[ $1 =~ ^172\.(1[6-9]|2[0-9]|3[0-1])\.([0-9]{1,3}\.)[0-9]{1,3}$ ]]; then
    echo "Private Class B"
elif [[ $1 =~ ^192\.168\.([0-9]{1,3}\.)[0-9]{1,3}$ ]]; then
    echo "Private Class C"
elif [[ $1 =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "Public IP"
else
    echo "Invalid IP"
fi 
# Usage: ./class_ip.sh <your-ip>