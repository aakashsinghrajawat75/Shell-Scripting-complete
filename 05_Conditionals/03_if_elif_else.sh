#!/bin/bash
#  3) IF-ELIF-ELSE statement

# Syntax:

# if [ condition1 ]
# then
#     # code to be executed if condition1 is true
# elif [ condition2 ]
# then
#     # code to be executed if condition2 is true
# else
#     # code to be executed if none of the conditions are true
# fi

# Example :

read -p "Enter your marks: " marks

if [ $marks -ge 85 ]
then
    echo "Division A"
elif [ $marks -ge 70 ]
then
    echo "Division B"
elif [ $marks -ge 45 ]
then
    echo "Division C"
else
    echo "You are Fail"
fi

# Output =>

# Enter your marks: 50
# Division C

# Enter your marks: 90
# Division A

# Enter your marks: 30
# You are Fail

# Enter your marks: 75
# Division B




num=8

if [ $num -gt 10 ]; then
    echo "Number is greater than 10."
    elif [ $num -eq 10 ]; then
    echo "Number is exactly 10."
else
    echo "Number is less than 10."
fi

# Output =>
# Number is less than 10.
