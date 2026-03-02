#!/bin/bash

read -p "Enter number of rows: " n

for ((i=1; i<=n; i++))
do
    # Print spaces
    for ((j=i; j<n; j++))
    do
        echo -n " "
    done

    # Print stars
    for ((k=1; k<=i; k++))
    do
        echo -n "*"
    done

    echo ""
done
