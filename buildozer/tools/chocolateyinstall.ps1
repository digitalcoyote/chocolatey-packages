$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.0.3/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = '34545d2c9fdecc6271438aae11fcbdf300a985f18e9c34fe6cbc086c0941814e5d10b8480d5d42d063607b293572835613ac5b0effedc05d0da294ff00a0f8b5'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
