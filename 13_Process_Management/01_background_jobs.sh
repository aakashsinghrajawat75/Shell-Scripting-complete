#!/bin/bash
# Learning background jobs and getting process ID

echo "Starting a background task..."
sleep 2 & # The '&' sends it to the background
PID=$!     # Gets the Process ID of the last background command

echo "Background task is running with Process ID: $PID"
echo "Waiting for it to finish..."
wait $PID
echo "Done!"
