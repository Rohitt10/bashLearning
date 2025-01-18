#!/bin/bash

# Define the file to be read
filename="yourfile.txt"

# Check if the file exists
if [[ -f "$filename" ]]; then
    # Read the file line by line
    while IFS= read -r line; do
        echo "$line"
    done < "$filename"
else
    echo "File does not exist."
fi

