$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'dip.exe'
    URL = 'https://github.com/030/dip/releases/download/4.2.3/dip-windows-2019'
    Checksum = '6ca1d6e7cff13c89417cc999fdead64b29e484755c4cfa4525ce632ca6e421d994ab05093a246e8e560080a627afa8ea1171778649cca28cf2d2797b18a60717'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
