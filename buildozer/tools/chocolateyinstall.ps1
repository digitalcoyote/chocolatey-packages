$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.0.0/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = 'a002e6b42c85afadfe8d184de5768f7e41b453207f8995e0da634dac4222b77c33698e655688bc896d97019f1024931e7b2abe83d429bce5c51c2fac3e1f600f'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
