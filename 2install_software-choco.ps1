# Set the execution policy to allow running scripts
Set-ExecutionPolicy Bypass -Scope Process -Force

# Install Chocolatey
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Read the software list from the text file
$softwareList = Get-Content -Path "chocolatey.txt"

# Concatenate the software IDs into a single string
$software = $softwareList -join " "

# Install each software package
foreach ($software in $softwareList) {
    choco install $software -y --no-progress
}