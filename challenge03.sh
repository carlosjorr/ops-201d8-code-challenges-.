 #!/bin/bash

# Script Name:                  ops lab 03
# Author:                       carlos rojas
# Date of latest revision:      04/26/1998
# Purpose:                      Purpose

# Declaration of variables

# Declaration of functions


# Main



# End

# Basic function

function loginhistory {
    echo "This is the login history"
}

function lastlog {
    last | awk '{ printf "%-15s %-15s %-20s %-20s \n", $1, $2, $4" "$5" "$6, $7" "$8 }'
}

# Call the loginhistory function
loginhistory

# Call the lastlog function three times
for i in {1..3}; do
    lastlog
done