$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'dip.exe'
    URL = 'https://github.com/030/dip/releases/download/2.1.4/dip-windows-2019'
    Checksum = 'afc0395435776d7fffc55d08b61610303d3f1d4667abf52463f9b00f74a34b97e645c76ad195037e7819c0d6eea85ade3e1a7da0fc173839913c4e28d7c6c885'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
