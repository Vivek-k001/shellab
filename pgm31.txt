#!/bin/bash

while true; do
    echo -e "\n1. Add\n2. Subtract\n3. Multiply\n4. Divide\n5. Exit"
    
    read -p "Choose a number: " choice
    
    if [ "$choice" -eq 5 ]; then
        echo "Exiting..."
        break
    fi

    read -p "Enter first number: " a
    read -p "Enter second number: " b

    case $choice in
        1) echo "Sum = $((a + b))" ;;
        2) echo "Difference = $((a - b))" ;;
        3) echo "Product = $((a * b))" ;;
        4) 
            if [ "$b" -ne 0 ]; then
                echo "Quotient = $((a / b))"
            else
                echo "Cannot divide by zero"
            fi
            ;;
        5) echo "Exiting..."; break ;;
        *) echo "Invalid choice" ;;
    esac
done
