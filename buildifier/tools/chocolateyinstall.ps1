$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/6.0.1/buildifier-windows-amd64.exe'
    Checksum64 = '484ff787488e4ee13e0c3831c13261fb3a47a4f05a487ed1b716aba6fcfe74873bc8aa31d8f93f62b6694628909f1922206d773a74304c8e0fe32c808ccf2632'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
