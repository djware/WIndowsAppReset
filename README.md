# WIndowsAppReset
Resets/repairs all Windows apps on your device automatically. 

This script retrieves a list of installed apps using the Get-AppxPackage cmdlet and then iterates through each app, resetting it using the Reset-AppxPackage cmdlet.

```
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
```

Download it and run the following command in powershell. 
```
powershell.exe -ExecutionPolicy Bypass -File "C:\user\user\download\ResetApps.ps1"
```
Make sure to replace "C:\Path\To\ResetApps.ps1" with the actual path to the script file on your system.

Please note that resetting all apps will remove any data associated with the apps, including settings and saved files. After resetting, the apps will be restored to their original state as if they were freshly installed.
