#!/bin/bash
echo $(head /dev/urandom | tr -dc "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\!\@\#\$\%\^\&\*\(\)" | head -c $1) # Usage: generate_password.sh <int>