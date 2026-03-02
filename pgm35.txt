#!/bin/bash

read -p "Enter the number of rows: " n

for ((i=1; i<=n; i++))
do
    # Print spaces
    for ((j=i; j<n; j++))
    do
        echo -n " "
    done

    # Print numbers from 1 to i
    for ((k=1; k<=i; k++))
    do
        echo -n "$k "
    done

    echo ""
done
