$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.0.0/buildifier-windows-amd64.exe'
    Checksum64 = 'cc9312b19760460a854d4077ab7787ae13d6010ddc054bb51e31d685c2425bd8d713ab38f94cb974c7959b60958185fec39d1aeb5565ed7ed1b362f2f0f8f948'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
