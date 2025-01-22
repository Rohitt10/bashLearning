#!/bin/bash

# Function definition
greet_user() {
    # The function takes one argument, which is the user's name
    echo "Hello, $1! Welcome to the Bash scripting world."
}

# Function to add two numbers
add_numbers() {
    # The function takes two arguments and adds them
    sum=$(( $1 + $2 ))
    echo "The sum of $1 and $2 is: $sum"
}

# Function to calculate the factorial of a number
factorial() {
    num=$1
    fact=1
    while [ $num -gt 1 ]; do
        fact=$(( fact * num ))
        num=$(( num - 1 ))
    done
    echo "The factorial is: $fact"
}

# Main program
echo "Learning Bash Functions"
echo "------------------------"

# Calling the greet_user function
greet_user "Alice"

# Calling the add_numbers function
add_numbers 5 7

# Calling the factorial function
factorial 5

