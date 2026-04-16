#!/bin/bash
# Get single input using read statement
echo "Enter any number: "
read num1

echo "Entered number is $num1"


# Get multiple inputs using only read statement
echo "Enter two numbers: "
read num1 num2

echo "Entered numbers are $num1 and $num2"


# Get multiple inputs using -p option
read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo "Entered numbers are $num1 and $num2"

# OR

read -p "Enter two number: " num1  num2
echo "Entered numbers are $num1 and $num2"
