#!/bin/bash
# Until loop:
# The until loop statement is opposite to while loop statement because, until loop body is executed repetitively
# as long as condition remains FALSE.

# Syntax:

# until (condition)
# do
#     Instruction1
#     Instruction2
#     .
#     .
#     InstructionN
# done


# OR :


# until [ condition ]; do
#     # Commands to execute
# done



# Example 1:

num=10

until (test $num -eq 1); do
    echo $num
    ((num--))
done


# Output =>

# 10
# 9
# 8
# 7
# 6
# 5
# 4
# 3
# 2



# Example 2:

# Print numbers from 1 to 5
count=1
until [ $count -gt 5 ]; do
    echo "Count: $count"
    ((count++))  # Increment count
done

# Output =>

# Count: 1
# Count: 2
# Count: 3
# Count: 4
# Count: 5



a=10

until [[ $a -eq 0 ]]; do
    echo "Value : $a"
    ((a--))
done


# Output =>

# Value : 10
# Value : 9
# Value : 8
# Value : 7
# Value : 6
# Value : 5
# Value : 4
# Value : 3
# Value : 2
# Value : 1
