#!/bin/bash

read -p "Enter number of lines " lines

i=0;

while [ $i -lt $lines ]
do
    j=0
    while [ $j -lt $lines ]
    do
        if [ $((lines-j-1)) -lt $i ] 
        then 
            echo -n "* "
        else
            echo -n "  "
        fi
        j=$((j+1))
    done
    echo
    i=$((i+1))
done


