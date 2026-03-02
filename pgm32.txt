#!/bin/bash

echo "Enter the starting number:"
read start
echo "Enter the ending number:"
read end

echo "Even numbers:"
for ((i=start; i<=end; i++))
do
    if [ $((i % 2)) -eq 0 ]
    then
        echo $i
    fi
done

echo "Odd numbers:"
for ((i=start; i<=end; i++))
do
    if [ $((i % 2)) -ne 0 ]
    then
        echo $i
    fi
done
