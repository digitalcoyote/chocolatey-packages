$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.0.1/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = '04542ae7fbebbe3c9d6b546296682c5cca4af51468e3ba8ecb6c609be1b67ed042ee26f903ae9cb45e2c3824c520eed8b554e46cc17804d8fcc344a7c582b983'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
