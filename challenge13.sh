#!/bin/bash

# Script Name:                  ops lab 13
# Author:                       carlos rojas
# Date of latest revision:      05/10/2023
# Purpose:                      Domain Analyzer




perform_network_operations() {
    read -p "Enter a domain name: " domain
    output_file="network_report.txt"

    echo "Running whois against $domain:"
    whois $domain >> $output_file

    echo "Running dig against $domain:"
    dig $domain >> $output_file

    echo "Running host against $domain:"
    host $domain >> $output_file

    echo "Running nslookup against $domain:"
    nslookup $domain >> $output_file

    echo "Network operations completed. Results saved in $output_file."
    read -p "Press enter to open the report..."
    # Replace 'nano' with your favorite text editor
    nano $output_file
}



echo "Select an option:"
echo "1. Option 1"
echo "2. Option 2"
echo "3. Option 3"
echo "4. Option 4"
echo "5. Option 5"
echo "6. Perform network operations"

read -p "Enter your choice: " choice

case $choice in
    1)
        # Option 1 logic
        ;;
    2)
        # Option 2 logic
        ;;
    3)
        # Option 3 logic
        ;;
    4)
        # Option 4 logic
        ;;
    5)
        # Option 5 logic
        ;;
    6)
        perform_network_operations
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
