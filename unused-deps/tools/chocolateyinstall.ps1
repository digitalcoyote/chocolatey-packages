$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.2.1/unused_deps-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'unused_deps.exe'
    Checksum64 = 'f2b40b2d3c583fa1ccc25e5ce58c0a9985012c72185458694a111a1e9a2a0b170a1f9350108e71789ba99d2202ba794cd94d94745345c4c0ccdf0e7d8fb25063'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
