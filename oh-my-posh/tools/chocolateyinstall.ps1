$ErrorActionPreference = 'Stop';
$pp = Get-PackageParameters

$silentArgs = "/quiet /norestart /l*v `"$($env:TEMP)\$($env:ChocolateyPackageName).$($env:ChocolateyPackageVersion).MsiInstall.log`"";

if ($pp['CURRENTUSER']) {
    $silentArgs = "$silentArgs"
}
else {
    $silentArgs = "$silentArgs ALLUSERS=1"
}

# From oh-my-posh version 24.11.4, the installer change to MSI (previously was a Innosetup .exe installer)
# The old version installed into Windows Apps using a different product id, so we need to uninstall it first
# This assumes that older version when installed included the version number in the display name
# (which is true for "Oh My Posh version 24.5.1" at least)
[array]$key = Get-UninstallRegistryKey -SoftwareName "Oh My Posh version*"

if ($key.Count -eq 1) {

    $key | ForEach-Object { 
        $uninstallArgs = @{
            PackageName    = $env:ChocolateyPackageName
            FileType       = 'exe'
            file = "$($_.UninstallString)"
            SilentArgs     = '/VERYSILENT'
        }
  
      Uninstall-ChocolateyPackage @uninstallArgs
    }
}

$InstallArgs = @{ 
    PackageName    = $env:ChocolateyPackageName
    FileType       = 'msi'
    Url64bit       = 'https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v26.4.0/install-x64.msi'
    Checksum64     = '36590760c12e7aea452f13b06523a86b0e237d61429f327cf22706f1f4616a7a2b912eb278f3ba67110abc18e16bd272200ab43e598d0088e781e21721cb3ca1'
    SilentArgs     = $silentArgs 
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @InstallArgs

if (Test-Path Function:\au_GetLatest) {
    # Finish here if we're running inside AU
    return
}


Write-Output "PROFILE: $profile"
if (Test-Path $profile) {
    $oldprofile = Get-Content $profile
    $OhMyPoshInprofile = @(
        ($oldprofile | Select-String -SimpleMatch 'Import-Module oh-my-posh' | Select-Object -ExpandProperty Line)
        ($oldprofile | Select-String -SimpleMatch 'Invoke-Expression (oh-my-posh --init --shell pwsh' | Select-Object -ExpandProperty Line)
        ($oldprofile | Select-String -SimpleMatch 'Set-PoshPrompt' | Select-Object -ExpandProperty Line)
    )

    if ($pp['Theme']) {
        $themeName = $pp['Theme']
        if (Test-Path "$env:LocalAppData/Programs/oh-my-posh/themes/$($themeName).omp.json") {
            $ohMyPoshprofileLine = "Invoke-Expression (oh-my-posh --init --shell pwsh --config ""$env:LocalAppData/Programs/oh-my-posh/themes/$($themeName).omp.json"")"
            # $ohMyPoshprofileLine = "Set-PoshPrompt -Theme $themeName" # Suggestion for possible alternative
            if ($OhMyPoshInprofile) {
                # If a theme is set, Overwrite old line to set new theme
                foreach ($existingLine in $OhMyPoshInprofile) {
                    Write-Host "Overwriting Old Oh-My-Posh line: $existingLine with $ohMyPoshprofileLine"
                    $oldprofile | ForEach-Object { $_ -replace $existingLine, $ohMyPoshprofileLine } | Set-Content -Path $profile -Force
                }
            }
            else {
                Add-Content -Path $profile -Value $ohMyPoshprofileLine -Force
            }
        }
        else {
            Throw "Could not find Theme $themeName @ $env:LocalAppData/Programs/oh-my-posh/themes/$($themeName).omp.json";
        }
        if (-Not($OhMyPoshInprofile)) {
            Add-Content -Path $profile -Value "Invoke-Expression (oh-my-posh --init --shell pwsh --config ""$env:LocalAppData/Programs/oh-my-posh/themes/$($themeName).omp.json"")";
            Add-Content -Path $profile -Value 'Use the command ''Get-PoshThemes'' to display every available theme in the current directory'
            Add-Content -Path $profile -Value '# For information about setting your oh-my-posh themes: https://ohmyposh.dev/docs/installation#3-replace-your-existing-prompt'
        }
  
  
        if (-Not($OhMyPoshInProfile)) {
            # Add-Content -Path $PROFILE -Value 'Invoke-Expression (oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)/themes/jandedobbeleer.omp.json")';
            Add-Content -Path $PROFILE -Value 'Set-PoshPrompt -Theme jandedobbeleer'; # Newer method of setting theme
            Add-Content -Path $PROFILE -Value 'Use the command ''Get-PoshThemes'' to display every available theme in the current directory'
            Add-Content -Path $PROFILE -Value '# For information about setting your oh-my-posh themes: https://ohmyposh.dev/docs/installation#3-replace-your-existing-prompt'
        }
    }

    Write-Host "oh-my-posh has been added to your profile. You may wish to append 'Set-PoshPrompt paradox' to set a theme"
}
elseif ($pp['CURRENTUSER']) {
    Write-Host "No Powershell profile was found. You may wish to create a profile and append 'Invoke-Expression (oh-my-posh --init --shell pwsh --config ""$env:LocalAppData/Programs/oh-my-posh/themes/themename.omp.json"")' to enable oh-my-posh. 'Get-PoshThemes' will list available themes for you"
}
else {
    Write-Host "No Powershell profile was found. You may wish to create a profile and append 'Invoke-Expression (oh-my-posh --init --shell pwsh --config "" ${env:ProgramFiles(x86)}/oh-my-posh/themes/themename.omp.json"")' to enable oh-my-posh. 'Get-PoshThemes' will list available themes for you"
}
