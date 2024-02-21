# Define the URL to download OSU! installer
$osuInstallerUrl = "https://m1.ppy.sh/osu%21install.exe"

# Define the path where the installer will be saved
$installerPath = "@HexTB\Downloads\osu_install.exe"

# Create the directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "@HexTB\Downloads"

# Download the OSU! installer
Invoke-WebRequest -Uri $osuInstallerUrl -OutFile $installerPath

# Start the installer
Start-Process -FilePath $installerPath -Wait

Write-Host "OSU! installation completed. Please complete the setup process."
