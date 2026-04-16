#!/bin/bash
# String Operatiobns

str="Hello, I am Aakash"


# Find the length of string :

# Syntax :
# ${#str_name}
# OR
# ` expr length "$str_name" `


echo "Length of String is: ${#str}"         # Length of String is: 20
# OR
echo "Length of string is: "`expr length "$str"`      # Length of string is: 20


# To make the string uppercase :

# Syntax :
# ${str_name^^}

upper=${str^^}          # ^^ This can make the string to upper case

echo $upper             # HELLO, I AM AAKASH

echo "Upper case of $str is:  ${str^^}"     # Upper case of Hello, I am Aakash is:  HELLO, I AM AAKASH


# To make the string lowercase :

# Syntax :
# ${str_name,,}

lower=${str,,}           # ,, This can make the string to lower case

echo $lower             # hello, i am aakash


# Replace a string words:

# Syntax :
# ${str_name/word_which_we_want_to_repace/word_which_we_want_to_insert}



replace=${str/Hello/Hi}

echo "Original string ----- $str"
echo "After replacing ----- $replace"

# Output =>
# Original string ----- Hello, I am Aakash
# After replacing ----- Hi, I am Aakash


# Slicing

# Syntax :
# ${str_name:start:end}


name=${str:12}

echo "Name: $name"         # Name: Aakash

sub=`expr substr "$str" 12 20`
echo "Substr: $sub"        # Substr:  Aakash

