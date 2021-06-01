$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'dip.exe'
    URL = 'https://github.com/030/dip/releases/download/2.1.5/dip-windows-2019'
    Checksum = '9803089de6c3319946cb46a28eefdbe6d2b92ce6c974da2035b042e92590d82c06cf58dda8441221fc0506076d5b222960284a87527b9e62c448ea33bb0afb89'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
