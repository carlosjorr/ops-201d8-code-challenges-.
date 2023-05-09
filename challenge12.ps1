

# Script:   ops challenge12               
# Author:   carlos rojas                    
# Date of latest revision:      
# Purpose: Write a Powershell script that returns the IPv4 address of the computer.




# Function to create network_report.txt on the desktop
function CreateNetworkReport {
    $desktopPath = [Environment]::GetFolderPath("Desktop")
    $filePath = Join-Path -Path $desktopPath -ChildPath "network_report.txt"
    ipconfig /all | Out-File -FilePath $filePath
    Write-Host "network_report.txt created successfully on the desktop."
    return $filePath
}

# Function to search and extract IPv4 addresses from network_report.txt
function SearchIPv4Address {
    param($filePath)
    $ipv4Addresses = Get-Content -Path $filePath | Select-String -Pattern '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | Select-Object -ExpandProperty Matches | Select-Object -ExpandProperty Value
    Write-Host "IPv4 addresses found:"
    $ipv4Addresses
}

# Create network_report.txt on the desktop
$reportFilePath = CreateNetworkReport

# Search and extract IPv4 addresses from network_report.txt
SearchIPv4Address -filePath $reportFilePath

# Remove network_report.txt
Remove-Item -Path $reportFilePath -Force
Write-Host "network_report.txt removed."

