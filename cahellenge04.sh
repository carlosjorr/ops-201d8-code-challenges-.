#!/bin/bash

# Script:   ops challenge04                   
# Author:   carlos rojas                    
# Date of latest revision:      
# Purpose: automate task

# create the directories
echo "Creating directories..."
mkdir dir1 dir2 dir3 dir4
echo "Done."

# create an array with the directory names
dirs=("dir1" "dir2" "dir3" "dir4")

# loop through the array and create a new .txt file in each directory
echo "Creating new files..."
for dir in "${dirs[@]}"; do
  touch "${dir}/new_file.txt"
  echo "Created new file in ${dir}."
done
echo "Done."