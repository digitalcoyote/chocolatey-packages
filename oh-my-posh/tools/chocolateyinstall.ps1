﻿$ErrorActionPreference = 'Stop';
$pp = Get-PackageParameters


$InstallArgs = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v3.144.0/install.exe'
  Checksum64 = 'e7c4a0579bb7c766d076791d51c4b4f965396c9ab605278bf9a0d48519c702eaf96b8bf9cced2d685c2c1b6e7daaf2dfe7caa775f94200b972a40ed66e9eafe6'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @InstallArgs

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
        if (Test-Path "$env:LocalAppDataPrograms/oh-my-posh/themes/$($themeName).omp.json") {
            $ohMyPoshprofileLine = "Invoke-Expression (oh-my-posh --init --shell pwsh --config ""$env:LocalAppData/Programs/oh-my-posh/themes/$($themeName).omp.json"")"
            # $ohMyPoshprofileLine = "Set-PoshPrompt -Theme $themeName" # Suggestion for possible alternative
            if ($OhMyPoshInprofile) {
                # If a theme is set, Overwrite old line to set new theme
                foreach ($existingLine in $OhMyPoshInprofile) {
                    Write-Host "Overwriting Old Oh-My-Posh line: $existingLine with $ohMyPoshprofileLine"
                    $oldprofile | ForEach-Object { $_ -replace $existingLine, $ohMyPoshprofileLine } | Set-Content -Path $profile -Force
                }
            } else {
                Add-Content -Path $profile -Value $ohMyPoshprofileLine -Force
            }
        } else {
            Throw "Could not find Theme $themeName @ $env:LocalAppDataPrograms/oh-my-posh/themes/$($themeName).omp.json";
        }
    } elseif (-Not($OhMyPoshInprofile)) {
        Add-Content -Path $profile -Value "Invoke-Expression (oh-my-posh --init --shell pwsh --config ""$env:LocalAppData/Programs/oh-my-posh/themes/$($themeName).omp.json"")";
        Add-Content -Path $profile -Value 'Use the command ''Get-PoshThemes'' to display every available theme in the current directory'
        Add-Content -Path $profile -Value '# For information about setting your oh-my-posh themes: https://ohmyposh.dev/docs/installation#3-replace-your-existing-prompt'
    }
  } elseif (-Not($OhMyPoshInProfile)) {
    # Add-Content -Path $PROFILE -Value 'Invoke-Expression (oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)/themes/jandedobbeleer.omp.json")';
    Add-Content -Path $PROFILE -Value 'Set-PoshPrompt -Theme jandedobbeleer'; # Newer method of setting theme
    Add-Content -Path $PROFILE -Value 'Use the command ''Get-PoshThemes'' to display every available theme in the current directory'
    Add-Content -Path $PROFILE -Value '# For information about setting your oh-my-posh themes: https://ohmyposh.dev/docs/installation#3-replace-your-existing-prompt'
  }

  Write-Host "oh-my-posh has been added to your profile. You may wish to append 'Set-PoshPrompt paradox' to set a theme"
} else {
    Write-Host "No Powershell profile was found. You may wish to create a profile and append 'Invoke-Expression (oh-my-posh --init --shell pwsh --config ""$env:LocalAppData/Programs/oh-my-posh/themes/themename.omp.json"")' to enable oh-my-posh. 'Get-PoshThemes' will list available themes for you"
}
