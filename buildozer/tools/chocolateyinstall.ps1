$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/4.2.3/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = '9bff2b81684409af952756809218c75d9ca8e50f9425b7c732206b966377e8385f978fb63943fad2d26d7202056f59e822c99d9b21f20b87b2ebdc558d348e86'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
