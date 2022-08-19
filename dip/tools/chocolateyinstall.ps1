$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'dip.exe'
    URL = 'https://github.com/030/dip/releases/download/4.1.0/dip-windows-2019'
    Checksum = 'e10d82f5b3290f9d12416b56ffecfec5ed4e49589b3d4e0c8d3478928b0a960bab7ddcdb0bc8290af547fe0af5161295461e7e0d41bb7a62435b3e55d198a4d2'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
