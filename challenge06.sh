#!/bin/bash

# Script:   ops challenge06                  
# Author:   carlos rojas                    
# Date of latest revision:      
# Purpose: 

# Define an array of file and directory names
names=(file1.txt directory1 directory2/file2.txt)

# Loop through each name in the array
for name in "${names[@]}"
do
    # Check if the file or directory exists
    if [ ! -e "$name" ]
    then
        # If the file or directory does not exist, create it
        echo "$name does not exist, creating it now"
        mkdir -p "$(dirname "$name")" && touch "$name"
    else
        echo "$name already exists"
    fi
done
