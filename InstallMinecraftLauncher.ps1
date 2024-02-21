# Define the URL to download Minecraft Launcher installer
$minecraftInstallerUrl = "https://launcher.mojang.com/download/MinecraftInstaller.msi"

# Define the path where the installer will be saved
$installerPath = "@HexTB\Downloads\MinecraftInstaller.msi"

# Create the directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "@HexTB\Downloads"

# Download the Minecraft Launcher installer
Invoke-WebRequest -Uri $minecraftInstallerUrl -OutFile $installerPath

# Start the installer
Start-Process -FilePath $installerPath -Wait

Write-Host "Minecraft Launcher installation completed. Please complete the setup process."
