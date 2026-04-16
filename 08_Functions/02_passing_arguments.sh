#!/bin/bash
# Passing arguments to a function

add_numbers() {
    local sum=$(( $1 + $2 ))
    echo "The sum is: $sum"
}

add_numbers 10 20
