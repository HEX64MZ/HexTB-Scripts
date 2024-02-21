# Define the URL to download Rockstar Games Launcher installer
$rockstarInstallerUrl = "https://rsgdownload.akamai.com/launcher/installer/windows/Rockstar-Games-Launcher.exe"

# Define the path where the installer will be saved
$installerPath = "@HexTB\Downloads\Rockstar-Games-Launcher.exe"

# Create the directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "@HexTB\Downloads"

# Download the Rockstar Games Launcher installer
Invoke-WebRequest -Uri $rockstarInstallerUrl -OutFile $installerPath

# Start the installer
Start-Process -FilePath $installerPath -Wait

Write-Host "Rockstar Games Launcher installation completed. Please complete the setup process."
