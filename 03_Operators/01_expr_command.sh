#!/bin/bash
# expr command is used to evaluate expressions

# syntax: expr [arg1] [arg2] [arg3] ...

# example 1: add two numbers
expr 2 + 2

# example 2: subtract two numbers
expr 5 - 2

# example 3: multiply two numbers
expr 3 \* 3

#  OR

add=`expr 3 + 3`
multi=`expr 3 \* 3`

echo "Addition of 3 and 3 is $add"
echo "Multiplication of 3 and 3 is $multi"
