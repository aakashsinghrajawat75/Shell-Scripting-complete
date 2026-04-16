#!/bin/bash
# Using grep and awk
echo "apple" > fruits.txt
echo "banana" >> fruits.txt
echo "cherry" >> fruits.txt

echo "--- Using grep to find 'apple' ---"
cat fruits.txt | grep "apple"

echo "Name,Age
Aakash,21
Rahul,25" > users.csv

echo "--- Using awk to print just names (Column 1) ---"
awk -F',' '{print $1}' users.csv
