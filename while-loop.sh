#!/bin/bash

echo "Enter number for which u want to get table"

read num
i=1

while [ $i -le 10 ]; do
    echo "$num * $i =  $((num * i))"
   i=$(( i+1 ))
done
