#!/bin/bash

# 1) IF statement

# Syntax:

# if [ condition ] # condition can be any logical expression
# then
#     # code to be executed if condition is true
# fi

# Example:

read -p "Enter any number: " num
if [ $num -eq 10 ]
then
    echo "Number is equal to 10"
fi

# Output =>
# Enter any number: 10
# Number is equal to 10



num=10

if [ $num -gt 5 ]; then
    echo "Number is greater than 5."
fi


# Output =>
# Number is greater than 5.
