#!/usr/bin/env bash
# DevOps 101 - Module 2 starter. Complete the TODOs.
set -euo pipefail
LOGFILE="/tmp/report-$(date +%F).txt"
STAMP() { echo -n "[$(date '+%F %T')] "; }

{
  STAMP; echo "Hostname: $(hostname)"
  STAMP; echo "Uptime:   $(uptime -p)"
  STAMP; echo "CPU idle: $(top -bn1 | grep -i '^%Cpu' | awk '{print $8"% idle"}')"
  STAMP; echo "Disk:     $(df -h / | awk 'NR==2{print $5" used"}')"
  STAMP; echo "Memory:   $(free | awk 'NR==2{printf "%.0f%% used", $3*100/$2}')"
  STAMP; echo "Top 5 by CPU:"
  ps -eo pid,comm,%cpu --sort=-%cpu | head -6
} | tee -a "$LOGFILE"
