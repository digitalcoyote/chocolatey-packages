$ErrorActionPreference = 'Stop'

# Remove the MSIX package
$appx = Get-AppxPackage -Name "*oh-my-posh*"
if ($appx) {
    Remove-AppxPackage -Package $appx.PackageFullName
    Write-Host "oh-my-posh Appx package removed successfully."
}

# Legacy fallback for older MSI/EXE installs
[array]$key = Get-UninstallRegistryKey -SoftwareName "Oh My Posh*"
if ($key.Count -ge 1) {
    $key | ForEach-Object { 
        Uninstall-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'msi' -SilentArgs '/quiet /norestart'
    }
}

# Remove added lines from Profile
if ($PROFILE -and (Test-Path $PROFILE)) {
    $oldProfile = @(Get-Content $PROFILE)

    $newProfile = @()
    foreach($line in $oldProfile) {
        if($line -like 'Import-Module posh-git') {
            Write-Host "'Import-Module posh-git' was found in your profile but is not being removed."
        }
        if ($line -like 'Import-Module oh-my-posh' -or $line -like 'Invoke-Expression (oh-my-posh --init --shell pwsh*') {
            continue
        }
        if($line -like 'Set-PoshPrompt*') {
            Write-Host "'$line' was setting a theme for your profile but is being removed."
            continue
        }
        $newProfile += $line
    }
  
    Set-Content -Path $PROFILE -Value $newProfile -Force
    Write-Host "oh-my-posh has been removed from your Powershell profile."
  }
  else{
    Write-Host "No Powershell Profile was found. You may need to undo changes to your Powershell profile manually."
  }