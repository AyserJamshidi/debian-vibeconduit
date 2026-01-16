#!/bin/bash

# Watchdog script for debian-vibeconduit container
# This script keeps the container running and can be extended with monitoring logic

echo "Starting debian-vibeconduit watchdog..."
echo "Container started at $(date)"

# Keep the container running
# This can be extended with actual monitoring/service logic
while true; do
    echo "Watchdog heartbeat: $(date)"
    sleep 300  # Sleep for 5 minutes
done
