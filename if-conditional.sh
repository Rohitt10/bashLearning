#!/bin/bash

echo "Enter your age: "
read age

if [ $age -gt 18 ]; then
    echo "you are adult"
else
    echo "you are not adult"
fi
