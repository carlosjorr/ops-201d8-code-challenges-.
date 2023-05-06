

# Script Name:                  ops lab 10
# Author:                       carlos rojas
# Date of latest revision:      05/05/2023
# Purpose:                      System Process Commands




 # Print all active processes ordered by highest CPU time consumption
 Write-Host "Active processes ordered by highest CPU time consumption:"
 Get-Process | Sort-Object CPU -Descending | Format-Table -Property ProcessName, CPU -AutoSize
 
 # Print all active processes ordered by highest Process Identification Number (PID)
 Write-Host "Active processes ordered by highest PID:"
 Get-Process | Sort-Object Id -Descending | Format-Table -Property ProcessName, Id -AutoSize
 
 # Print the top five active processes ordered by highest Working Set (WS(K))
 Write-Host "Top five active processes ordered by highest Working Set (WS(K)):"
 Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5 | Format-Table -Property ProcessName, WorkingSet -AutoSize
 
 # Start a browser process and open a URL
 Start-Process -FilePath "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -ArgumentList "https://owasp.org/www-project-top-ten/"
 
 
 # Start Notepad ten times using a for loop
 Write-Host "Starting Notepad ten times..."
 for ($i = 1; $i -le 10; $i++) {
     Start-Process -FilePath "notepad.exe"
 }
 
 # Close all instances of Notepad
 Write-Host "Closing all instances of Notepad..."
 Get-Process | Where-Object {$_.ProcessName -eq "notepad"} | ForEach-Object { $_.CloseMainWindow() }
 
 
 
 # Kill a process by its Process Identification Number
 $processToKill = "msedge"
 Write-Host "Killing process $processToKill..."
 $process = Get-Process -Name $processToKill -ErrorAction SilentlyContinue
 if ($process) {
     $process | Stop-Process -Force
 } else {
     Write-Host "Process $processToKill not found."
 }
 