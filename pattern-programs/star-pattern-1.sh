#!/bin/bash

echo -n "Enter number of lines:  "
read lines

i=1
while [ $i -le $lines ] ;
do
   j=1

  while [ $j -le $lines ] ;
  do
     echo -n "* "
    j=$(( j + 1 ))
  done
  echo  
  i=$(( i + 1 ))
done

