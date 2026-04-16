#!/bin/bash
# 5) Switch statement

# Syntax :

# case variable in
#     pattern1)
#         # Commands for pattern1
#         ;;
#     pattern2)
#         # Commands for pattern2
#         ;;
#     *)
#         # Default commands if no patterns match
#         ;;
# esac


# Example 1:

# read -p "Enter a day: " day

# case $day in
#     Monday)
#         echo "Start of the workweek."
#         ;;
#     Friday)
#         echo "End of the workweek."
#         ;;
#     *)
#         echo "It's a regular day."
#         ;;
# esac


# Output =>
# Enter a day: Monday
# Start of the workweek.

# Enter a day: Friday
# End of the workweek.

# Enter a day: Tuesday
# It's a regular day.


# Example 2:

echo -e "1 : For print date\n2 : For list of scripts\n3 : To check current working directory\nEnter your choice: "

read ch

case $ch in
    1) date ;;
    2) ls *.sh ;;
    3) pwd ;;
    *) echo "Invalid choice" ;;
esac


# Output =>

# 1 : For print date
# 2 : For list of scripts
# 3 : To check current working directory
# Enter your choice:
# 1
# Thu Nov 14 18:54:07 IST 2024

# 1 : For print date
# 2 : For list of scripts
# 3 : To check current working directory
# Enter your choice:
# 3
# /home/shreyash/Desktop/Programming/Shell Scripting

# 1 : For print date
# 2 : For list of scripts
# 3 : To check current working directory
# Enter your choice:
# 5
# Invalid choice
