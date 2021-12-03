$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/4.2.4/buildifier-windows-amd64.exe'
    Checksum64 = '789320410fb40713e419e4d4f709234b0464cccf0d17f5a976e45252649dc3919cd5e79296009914dcae8e07f1dc6c6356997c128e6d1f9efd9df708e37d6e64'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
