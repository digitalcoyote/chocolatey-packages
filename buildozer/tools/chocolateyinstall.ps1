$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/5.0.1/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = 'ae9411470031f4839686e97340bb0613014e125687df051b6d377cdd226b65b3cd9ff3b2a8cb9aba2c0ee4a97e0a1d9a057a90f738063e0f02c81b90931bd78f'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
