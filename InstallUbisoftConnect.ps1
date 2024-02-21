# Define the URL to download Ubisoft Connect installer
$ubisoftInstallerUrl = "https://ubistatic3-a.akamaihd.net/orbit/launcher_installer/UbisoftConnectInstaller.exe"

# Define the path where the installer will be saved
$installerPath = "@HexTB\Downloads\UbisoftConnectInstaller.exe"

# Create the directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "@HexTB\Downloads"

# Download the Ubisoft Connect installer
Invoke-WebRequest -Uri $ubisoftInstallerUrl -OutFile $installerPath

# Start the installer
Start-Process -FilePath $installerPath -Wait

Write-Host "Ubisoft Connect installation completed. Please complete the setup process."
