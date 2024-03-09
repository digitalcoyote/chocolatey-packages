$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v6.4.0/unused_deps-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'unused_deps.exe'
    Checksum64 = '799414e49f533c362efccced8c4645b098cc99e42331398920eab78d1df66afb90fbfa91321246dcc14fd8857e7cc94e7f0b5532d4c644159494d24c6dbabe9c'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
