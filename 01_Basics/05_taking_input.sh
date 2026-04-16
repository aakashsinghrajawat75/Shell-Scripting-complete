#!/bin/bash
# Taking the input from the user

# Syntax :

# read var_name

# OR

# read -p "Message" var_name

# Example :

echo "Enter your name : "
read name
echo "Hello $name"

# OR

read -p "Enter your age : " age
echo "Your age is $age"


# Enter your name : 
# Aakash
# Hello Aakash
# Enter your age : 21
# Your age is 21


printf "Hi My name is Aakash\nI am a Data Scientist\nI am 21 years old\n"
    
# Output =>
# Hi My name is Aakash
# I am a Data Scientist
# I am 21 years old
