#!/bin/bash

read -p "Enter first number: " a
read -p "Enter second number: " b

# Store original values
num1=$a
num2=$b

# Calculate GCD using Euclidean algorithm
while [ $b -ne 0 ]; do
    temp=$b
    b=$((a % b))
    a=$temp
done

gcd=$a
lcm=$(( (num1 * num2) / gcd ))

echo "LCM of $num1 and $num2 is: $lcm"
