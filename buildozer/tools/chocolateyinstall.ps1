$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v7.3.1/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = '8ba29f87a61207628453e5544f02d8a749ff0c784a1cbeff4b5bd14efc963f2aab97d9d706edc9a5ed3a4f5ca9a7b19062a3ae4460fa8763ebc59d995afd4adc'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
