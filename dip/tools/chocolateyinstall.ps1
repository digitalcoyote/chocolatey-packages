$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'dip.exe'
    URL = 'https://github.com/030/dip/releases/download/2.1.6/dip-windows-2019'
    Checksum = '8a69c51c64ac3f5feead691933c6ef0f7742b5ccad5f7087a57e722f6dff94d5ef87894844365a52fb306f163b53b801416450d3c11ed406c387f26f6957a175'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
