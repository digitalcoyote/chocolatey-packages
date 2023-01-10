$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/6.0.0/buildifier-windows-amd64.exe'
    Checksum64 = 'fd60adf9dc0c0427383adf6a1c5bebdd78f9f9797cc215cec32bd096c6742ea003a78f4a9e5762a69603a1b81f02577f653b5295e654e12eef00ff582fd44b2c'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
