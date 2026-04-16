#!/bin/bash
int_var=1
str_var="Aakash"
float_var=7.7
bool_var=true

echo "Integer vaiable: $int_var"
echo "String variable: $str_var"
echo "Float variable: $float_var"
echo "Bool variable: $bool_var"

int_var=100

echo "Integer variable after changing value: $int_var"


a=100

echo "$a"    # while printing the value of variable inside double quotes it can work 
echo '$a'    # while printing the value of variable inside single quotes it can not work 
