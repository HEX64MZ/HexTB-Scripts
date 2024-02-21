# Define the URL to download Epic Games Launcher installer
$epicInstallerUrl = "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi"

# Define the path where the installer will be saved
$installerPath = "@HexTB\Downloads\EpicGamesLauncherInstaller.msi"

# Create the directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "@HexTB\Downloads"

# Download the Epic Games Launcher installer
Invoke-WebRequest -Uri $epicInstallerUrl -OutFile $installerPath

# Start the installer
Start-Process -FilePath $installerPath -Wait

Write-Host "Epic Games Launcher installation completed. Please complete the setup process."
