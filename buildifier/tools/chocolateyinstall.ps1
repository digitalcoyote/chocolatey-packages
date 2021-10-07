$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/4.2.2/buildifier-windows-amd64.exe'
    Checksum64 = 'e21f9806a8ae90e6879c29fa7c7b10d7d185ae5630f095dd25b3c867bae797b63ebd6e0ca9d781bf191a6e5fc9ff4b58f241ba1082f54cb3c8254c0e8247a157'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
