#!/bin/bash

# Display computer name
echo "===== Computer Name ====="
hostname

# CPU
echo "===== CPU Information ====="
lshw -class processor | grep -E 'product|vendor|physical id|bus info|width'

# RAM
echo "===== RAM Information ====="
lshw -class memory | grep -E 'description|physical id|size'

# Display Adapter
echo "===== Display Adapter Information ====="
lshw -class display | grep -E 'description|product|vendor|physical id|bus info|width|clock|capabilities|configuration|resources'

# Network Adapter
echo "===== Network Adapter Information ====="
lshw -class network | grep -E 'description|product|vendor|physical id|bus info|logical name|version|serial|size|capacity|width|clock|capabilities|configuration|resources'
