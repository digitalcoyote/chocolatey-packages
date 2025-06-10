$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.2.1/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = '0402b6b2d986edf8678d7369a26f837dbd9fba659b6e03f244bcfefe84eed14de47e9f68dc70bbcf5ab5c1482994503500b19e59b546b2b3a41c46508ff5a2f5'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
