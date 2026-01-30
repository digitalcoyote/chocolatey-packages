$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.5.1/buildifier-windows-amd64.exe'
    Checksum64 = 'e8660469ae1bed01dc55b05d4fe2ffd3809f5c0967e95913d3cd4eebe895e3ab928b254db54cdb86523024e8cc2547827046b2784ff06018d5427816115e1ffa'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
