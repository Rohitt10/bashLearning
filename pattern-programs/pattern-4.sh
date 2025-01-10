#!/bin/bash

echo -n "Enter number of lines: "
read lines

i=0

while [ $i -lt $lines ];
do
    j=0
    while [ $j -lt $lines ];
    do
        echo -n "$(( lines-j)) "
        
        j=$((j+1))
    done
    echo
    i=$((i+1))
done
