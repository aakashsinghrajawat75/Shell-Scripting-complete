#!/bin/bash
# 1. for Loop :
# The for loop iterates over a list of values or a range of numbers.

# Syntax:

# for variable in list; do
# Commands to execute
# done


#!/bin/bash

# Loop through a list of items
for item in Apple Banana Cherry; do
    echo "Fruit: $item"
done

# Output =>
# Fruit: Apple
# Fruit: Banana
# Fruit: Cherry


# Loop through a range of numbers
for i in {1..5}; do
    echo "Number: $i"
done


# Output =>
# Number: 1
# Number: 2
# Number: 3
# Number: 4
# Number: 5


# For loop

# for ( ( initialization of counter ; test counter condition ; increment or decrement counter ))
# do
#  Body of loop ;
# done


for ((x = 0; x <= 10; x++))
do
    echo -n "$x  "
done

# Output =>
# 0   1   2   3   4   5   6   7   8   9   10



# Getting the values form file

file="/home/Aakash/Desktop/Programming/name.txt"

for data in $(cat $file)
do
    echo $data
done


# Output =>
# Aakash
# aaa
# bbb
# ccc
# ddd
# eee
# fff


file="/home/Aakash/Desktop/Programming/"

for data in $(ls $file)
do
    echo $data
done


# Output =>
# C
# C++
# DSA_using_C++
# Data_Science
# Node
# JS
# PHP
# Python
# SQL
# Shell
# Scripting
# Web_Development
# employees.csv
# name.txt


arr=("Aakash" "aaa" "bbb" "ccc" "ddd" "eee" "fff")

for i in "${arr[@]}"
do
    echo "$i"
done


# Output =>
# Aakash
# aaa
# bbb
# ccc
# ddd
# eee
# fff
