$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'dip.exe'
    URL = 'https://github.com/030/dip/releases/download/3.0.3/dip-windows-2019'
    Checksum = '1c384efe87a06e9f5b043b66ee9022e19e30e2ff9dbda107773e46231dbd0474bfa7533354adc5572b9d0761a689edc2fda028dc0fe138b34b07280b5c6eec7e'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
