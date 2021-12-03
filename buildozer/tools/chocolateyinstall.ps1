$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/4.2.4/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = '46dca44a2875dd16440abda1aafb47d3711fc2d6f2f21fc8d840447e4f4c1ec17a66d0987b0659f9b07a776b472f25a8bf1846b8394aa3e462ca6519f1b1f383'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
