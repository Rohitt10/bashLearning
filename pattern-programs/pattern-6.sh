#!/bin/bash

echo -n "enter number of lines: "
read lines
i=0 

while [ $i -lt $lines ]
do
    j=0
    while [  $j -lt $((lines-i)) ]
    do
        echo -n "* "
        j=$((j+1))
    done
    echo 
    i=$((i+1))
done
