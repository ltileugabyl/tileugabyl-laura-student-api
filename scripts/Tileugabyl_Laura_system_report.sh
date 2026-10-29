#!/bin/bash

LOG="logs/Tileugabyl_Laura_system_report.log"

{
echo "Student: Tileugabyl Laura"
echo "Date and Time: $(date)"
echo "Username: $(whoami)"
echo "Operating System:"
cat /etc/os-release | head -n 2
echo "Kernel Version: $(uname -r)"
echo "CPU Information:"
lscpu | grep "Model name" | head -n 1
echo "Memory Information:"
free -h
echo "Disk Usage:"
df -h
echo "Available Disk Space:"
df -h /
} | tee "$LOG"
