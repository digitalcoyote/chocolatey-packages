$ErrorActionPreference = 'Stop';
$pp = Get-PackageParameters

$InstallArgs = @{
    PackageName    = $env:ChocolateyPackageName
    FileType       = 'exe'
    SilentArgs     = '/VERYSILENT'
    Url64bit       = 'https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v3.140.1/install.exe'
    Checksum64     = '73789d889a4e1a05c57a5cd06f438cebc82e77d05d8a02d4201874d79cc171e3a9125bcd8cfe8eaa856453ad3a0e0b545300cb1ba0f5ec339253ab2c0b7b84e8'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @InstallArgs

if ($PROFILE -and (Test-Path $PROFILE)) {
    $OhMyPoshInProfile = @(
        (Select-String -SimpleMatch 'Import-Module oh-my-posh' -Path $PROFILE -Raw)
        (Select-String -SimpleMatch 'Invoke-Expression (oh-my-posh --init --shell pwsh' -Path $PROFILE -Raw)
        (Select-String -SimpleMatch 'Set-PoshPrompt' -Path $PROFILE -Raw)
    )
    if ($pp['Theme']) {
        if (Test-Path "$env:LocalAppDataPrograms/oh-my-posh/themes/$($p['Theme'])).omp.json") {
            $ohMyPoshProfileLine = "Invoke-Expression (oh-my-posh --init --shell pwsh --config ""$env:LocalAppDataPrograms/oh-my-posh/themes/$($p['Theme'])).omp.json"")"
            if ($OhMyPoshInProfile) {
                # If a theme is set, Overwrite old line to set new theme
                foreach ($line in $OhMyPoshInProfile) {
                    Write-Host "Overwriting Old Oh-My-Posh line: $line with $ohMyPoshProfileLine"
                    Get-Content $PROFILE | Select-String -SimpleMatch $line -NotMatch | Out-File $PROFILE
                }
            }
            Add-Content -Path $PROFILE -Value $ohMyPoshProfileLine -Force
        } else {
            Throw "Could not find Theme $pp['Theme'] @ $env:LocalAppDataPrograms/oh-my-posh/themes/$($p['Theme'])).omp.json";
        }
    } elseif (-Not($OhMyPoshInProfile)) {
        Add-Content -Path $PROFILE -Value 'Invoke-Expression (oh-my-posh --init --shell pwsh)`n';
    }

    Write-Host "oh-my-posh has been added to your profile. You may wish to append 'Set-PoshPrompt paradox' to set a theme"
} else {
    Write-Host 'No Powershell Profile was found. You may wish to create a Profile and append ''Invoke-Expression (oh-my-posh --init --shell pwsh --config "$env:LocalAppDataPrograms/oh-my-posh/themes/themename.omp.json")'' to enable oh-my-posh. ''Get-PoshThemes'' will list available themes for you'
}
