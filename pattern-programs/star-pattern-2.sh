#!/bin/bash

echo -n "Enter number of lines: "
read lines

for (( i=1; i<=lines; i++ ))
do
    for (( j=1; j<=i; j++ ))
    do
        echo -n "* "
    done
    echo
done
