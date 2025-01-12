#!/bin/bash


echo -n "enter number if lines: "
read lines
i=0

while [ $i -lt $lines ];
do
   j=0
  while [ $j -lt $lines ];
  do
      echo -n "$((i+1)) "
      j=$((j+1))
  done
  echo
  i=$((i+1))
done 
