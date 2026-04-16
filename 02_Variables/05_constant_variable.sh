#!/bin/bash

# Constant variable in shell script

readonly city="Jaipur"

echo "My city name is: $city"

city="Jaipur"      # Here error will be thrown because we have used readonly keyword or it an constant
# echo "My city name is: $city"
