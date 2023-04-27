#!/bin/bash

# Script Name:                  Script Name
# Author:                       Your Name
# Date of latest revision:      00/00/0000
# Purpose:                      Purpose

# Declaration of variables

# Declaration of functions


# Main



# End

#!/bin/bash

# Check if directories exist before creating them
if [ ! -d "dir1" ]; then
  mkdir dir1
  echo "Created directory: dir1"
fi
if [ ! -d "dir2" ]; then
  mkdir dir2
  echo "Created directory: dir2"
fi
if [ ! -d "dir3" ]; then
  mkdir dir3
  echo "Created directory: dir3"
fi
if [ ! -d "dir4" ]; then
  mkdir dir4
  echo "Created directory: dir4"
fi

# Put directory names in an array
dirs=("dir1" "dir2" "dir3" "dir4")

# Create a .txt file in each directory using the array variable
for dir in "${dirs[@]}"
do
  touch "$dir/new_file.txt"
  echo "Created file: $dir/new_file.txt"
done

echo "Script completed successfully"
