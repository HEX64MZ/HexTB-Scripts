# Define the URL to download Steam installer
$steamInstallerUrl = "https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe"

# Define the path where the installer will be saved
$installerPath = "@HexTB\Downloads\SteamSetup.exe"

# Create the directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "@HexTB\Downloads"

# Download the Steam installer
Invoke-WebRequest -Uri $steamInstallerUrl -OutFile $installerPath

# Start the installer
Start-Process -FilePath $installerPath -Wait

Write-Host "Steam installation completed. Please complete the setup process."
