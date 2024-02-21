# Define the URL to download the Origin client installer
$originInstallerUrl = "https://download.dm.origin.com/origin/live/OriginSetup.exe"

# Define the path where the installer will be saved
$installerPath = "@HexTB\Downloads\OriginSetup.exe"

# Create the directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "@HexTB\Downloads"

# Download the Origin client installer
Invoke-WebRequest -Uri $originInstallerUrl -OutFile $installerPath

# Start the installer
Start-Process -FilePath $installerPath -Wait

Write-Host "Origin client installation completed. Please complete the setup process."
