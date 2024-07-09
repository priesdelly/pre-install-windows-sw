# Set the execution policy to allow running scripts
Set-ExecutionPolicy Bypass -Scope Process -Force

winget import -i .\winget-export.json --accept-package-agreements --no-upgrade --disable-interactivity --ignore-unavailable --wait