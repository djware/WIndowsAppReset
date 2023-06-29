# Reset all apps on Windows 11
Write-Host "Resetting all apps on Windows 11..."

# Get the list of installed apps
$apps = Get-AppxPackage

# Loop through each app and reset it
foreach ($app in $apps) {
    $appName = $app.Name

    # Reset the app
    Write-Host "Resetting app: $appName"
    $app | Reset-AppxPackage

    Write-Host "App reset complete."
}

Write-Host "All apps have been reset."