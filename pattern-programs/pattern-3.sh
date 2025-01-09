#!/bin/bash

echo -n "Enter the number of lines: "
read lines
i=1

while [ $i -le $lines ];
do
    j=1
    while [ $j -le $lines ];
    do
        printf "%d " $j
        j=$(( j+1 ))
    done
    echo
    i=$(( i + 1 ))
done

