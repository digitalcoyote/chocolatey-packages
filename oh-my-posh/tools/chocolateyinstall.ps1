$ErrorActionPreference = 'Stop';
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

if ($PROFILE -and (Test-Path $PROFILE)) {
  $oldProfile = Get-Content $PROFILE
  $OhMyPoshInProfile = @(
    ($oldProfile | Select-String -SimpleMatch 'Import-Module oh-my-posh' | Select-Object -ExpandProperty Line)
    ($oldProfile | Select-String -SimpleMatch 'Invoke-Expression (oh-my-posh --init --shell pwsh' | Select-Object -ExpandProperty Line)
    ($oldProfile | Select-String -SimpleMatch 'Set-PoshPrompt' | Select-Object -ExpandProperty Line)
  )
  if ($pp['Theme']) {
    $themeName = $pp['Theme']
    if (Test-Path "$env:LocalAppDataPrograms/oh-my-posh/themes/$($themeName).omp.json") {
      # $ohMyPoshProfileLine = "Invoke-Expression (oh-my-posh --init --shell pwsh --config ""$env:LocalAppDataPrograms/oh-my-posh/themes/$($themeName).omp.json"")"
      $ohMyPoshProfileLine = "Set-PoshPrompt -Theme $themeName" # Newer method of setting theme
      if ($OhMyPoshInProfile) {
        # If a theme is set, Overwrite old line to set new theme
        foreach ($existingLine in $OhMyPoshInProfile) {
          Write-Host "Overwriting Old Oh-My-Posh line: $existingLine with $ohMyPoshProfileLine"
          $oldProfile | ForEach-Object { $_ -replace $existingLine, $ohMyPoshProfileLine } | Set-Content -Path $PROFILE -Force
        }
      } else {
        Add-Content -Path $PROFILE -Value $ohMyPoshProfileLine -Force
      }
    } else {
      Throw "Could not find Theme $themeName @ $env:LocalAppDataPrograms/oh-my-posh/themes/$($themeName).omp.json";
    }
  } elseif (-Not($OhMyPoshInProfile)) {
    # Add-Content -Path $PROFILE -Value 'Invoke-Expression (oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)/themes/jandedobbeleer.omp.json")';
    Add-Content -Path $PROFILE -Value 'Set-PoshPrompt -Theme jandedobbeleer'; # Newer method of setting theme
    Add-Content -Path $PROFILE -Value 'Use the command ''Get-PoshThemes'' to display every available theme in the current directory'
    Add-Content -Path $PROFILE -Value '# For information about setting your oh-my-posh themes: https://ohmyposh.dev/docs/installation#3-replace-your-existing-prompt'
  }

  Write-Host "oh-my-posh has been added to your profile. You may wish to append 'Set-PoshPrompt paradox' to set a theme"
} else {
  Write-Host 'No Powershell Profile was found. You may wish to create a Profile and append ''Invoke-Expression (oh-my-posh --init --shell pwsh --config "$env:LocalAppDataPrograms/oh-my-posh/themes/themename.omp.json")'' to enable oh-my-posh. ''Get-PoshThemes'' will list available themes for you'
}
