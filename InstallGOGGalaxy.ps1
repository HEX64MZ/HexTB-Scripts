# Define the URL to download GOG Galaxy installer
$gogInstallerUrl = "https://gog.com/downloader2/GalaxyClientSetup.exe"

# Define the path where the installer will be saved
$installerPath = "@HexTB\Downloads\GalaxyClientSetup.exe"

# Create the directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "@HexTB\Downloads"

# Download the GOG Galaxy installer
Invoke-WebRequest -Uri $gogInstallerUrl -OutFile $installerPath

# Start the installer
Start-Process -FilePath $installerPath -Wait

Write-Host "GOG Galaxy installation completed. Please complete the setup process."
