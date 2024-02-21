# Define the URL to download Roblox Client installer
$robloxInstallerUrl = "https://setup.rbxcdn.com/RobloxPlayerLauncher.exe"

# Define the path where the installer will be saved
$installerPath = "@HexTB\Downloads\RobloxPlayerLauncher.exe"

# Create the directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "@HexTB\Downloads"

# Download the Roblox Client installer
Invoke-WebRequest -Uri $robloxInstallerUrl -OutFile $installerPath

# Start the installer
Start-Process -FilePath $installerPath -Wait

Write-Host "Roblox Client installation completed. Please complete the setup process."
