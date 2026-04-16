#!/bin/bash

#  Math calculations in shell script

x=10
y=20

#  Two ways to do arithmetic operations in shell script

# 1st way --

# using let
# let a++   OR  let a=10+20

let add=$x+$y
echo "Addition is: $add"       # Addition is: 30

# 2nd way
# ((a++))    OR    ((sub=$x-$y))
((sub = $y - $x))    # OR    ((sub = $y - $x))  
echo "Subtraction is: $sub"    # Subtraction is: 10  

echo "Multiplication is: $(($x * $y))"   # Multiplication is: 200

