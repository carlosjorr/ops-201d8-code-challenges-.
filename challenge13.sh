#!/bin/bash

# Script Name:                  ops lab 13
# Author:                       carlos rojas
# Date of latest revision:      05/10/2023
# Purpose:                      Domain Analyzer




perform_network_operations() {
    read -p "Enter a domain name: " domain
    output_file="network_report-test.txt"

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



