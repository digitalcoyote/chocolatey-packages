$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'dip.exe'
    URL = 'https://github.com/030/dip/releases/download/3.0.1/dip-windows-2019'
    Checksum = '1fd00c509968135feebc3eb5c8cd29725db243ecbd5cdcf6e0fcb6115428ee399379c101bc5039ea13fe2c75569d2fe0baa1d3def6189be0057e55f895cac789'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
