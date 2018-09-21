#!/bin/sh
## This script will Check Memory, Disk, and CPU Utilization of a Gateway, and will also check Current and Peak FW Connections Table
printf "$HOSTNAME current stats are:\n"
free -g | awk 'NR==2{printf "Memory Usage: %s/%sGB (%.2f%%)\n", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$4}'
top -bn1 | grep load | awk '{printf "CPU Load: %.2f%%\n", $(NF-2)}'
fw tab -t connections -s | awk 'NR==2{printf "Current Connections: %g\nPeak Connections: %g\n", $4, $5}'
