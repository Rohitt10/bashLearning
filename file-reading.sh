#!/bin/bash

# Specify the file name (or path)
file="input.txt"

# Read the file line by line and print each line
while IFS= read -r line
do
  echo "$line"
done < "$file"

