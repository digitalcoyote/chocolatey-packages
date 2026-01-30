$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.5.1/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = 'c6e3649616afad0973fb2ad680ef336d946f132cfb68bd1a656219c651d481c90c407c6d73e20ca9661d3d20b86a33bb93b79be5bfc6becbaceb05ebf5350eab'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
