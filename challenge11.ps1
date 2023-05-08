

# Script Name:                  ops lab 11
# Author:                       carlos rojas
# Date of latest revision:      05/08/2023
# Purpose:                      Write a Powershell script that automates the configuration of a new Windows 10 endpoint




# Enable File and Printer Sharing
Set-NetFirewallProfile -Profile Private,Public -Enabled True
Enable-NetFirewallRule -DisplayGroup "File and Printer Sharing"

# Allow ICMP traffic (ping)
New-NetFirewallRule -DisplayName "ICMPv4" -Protocol ICMPv4 -IcmpType 8 -Enabled True

# Enable Remote Management
Enable-PSRemoting -Force

# Remove bloatware (sample list, modify as needed)
$BloatwareApps = @(
    "Microsoft.BingWeather",
    "Microsoft.GetHelp",
    "Microsoft.Getstarted",
    "Microsoft.Microsoft3DViewer",
    "Microsoft.MicrosoftOfficeHub",
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.MixedReality.Portal",
    "Microsoft.MSPaint",
    "Microsoft.Office.OneNote",
    "Microsoft.OneConnect",
    "Microsoft.People",
    "Microsoft.Print3D",
    "Microsoft.SkypeApp",
    "Microsoft.WindowsAlarms",
    "Microsoft.WindowsCalculator",
    "Microsoft.WindowsCamera",
    "Microsoft.WindowsMaps",
    "Microsoft.WindowsPhone",
    "Microsoft.WindowsSoundRecorder",
    "Microsoft.WindowsStore",
    "Microsoft.Xbox.TCUI",
    "Microsoft.XboxApp",
    "Microsoft.XboxGameOverlay",
    "Microsoft.XboxGamingOverlay",
    "Microsoft.XboxIdentityProvider",
    "Microsoft.XboxSpeechToTextOverlay",
    "Microsoft.YourPhone",
    "Microsoft.ZuneMusic",
    "Microsoft.ZuneVideo"
)

$BloatwareApps | ForEach-Object {
    Get-AppxPackage -Name $_ | Remove-AppxPackage -ErrorAction SilentlyContinue
}

# Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Disable SMBv1
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
Set-SmbClientConfiguration -EnableSMB1Protocol $false -Force
