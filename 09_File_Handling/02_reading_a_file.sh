#!/bin/bash
# Reading a file line by line

file="data.txt"

if [ -f "$file" ]; then
    while read line; do
        echo "Read: $line"
    done < "$file"
else
    echo "File not found! Run 01_writing_to_file.sh first."
fi
