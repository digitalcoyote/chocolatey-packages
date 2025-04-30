$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.2.0/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = '528b0872e12285f8a95d9475ccf3e5a5c493dbe1105653b09e5b77a2d465f0452f23be5742e49ecd7e90364cfde103daa6553e7757ce398dd5e1aaa81b5fb56f'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
