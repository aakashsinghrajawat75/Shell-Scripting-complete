#!/bin/bash
# Checking exit statuses

# Run a successful command
ls
echo "Status of ls: $?" # Should be 0

# Run a failing command
cat file_that_does_not_exist.txt
if [ $? -ne 0 ]; then
    echo "The file read failed! Exiting script safely."
    exit 1
fi
