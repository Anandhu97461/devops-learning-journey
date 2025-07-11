#!/usr/bin/env bash

logfile="activity.log"
timestamp=$(date -u +%Y-%m-%dT%H:%M:%SZ)

echo "$timestamp: Starting backup..." >> "$logfile"
# Simulated backup
sleep 1
echo "$timestamp: Backup completed." >> "$logfile"

cat "$logfile"