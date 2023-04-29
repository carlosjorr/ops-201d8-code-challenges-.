#!/bin/bash

# Script Name:                  ops lab 05
# Author:                       carlos rojas
# Date of latest revision:      04/28/2023
# Purpose:                      Purpose



# End

#!/bin/bash

while true
do
    # Display running processes
    ps -e

    # Ask user for PID
    read -p "Enter PID to kill process (or 'exit' to quit): " pid

    # Check if user wants to exit
    if [[ $pid == "exit" ]]
    then
        break
    fi

    # Kill process with specified PID
    kill $pid

    # Add some space for clarity
    echo ""
done





