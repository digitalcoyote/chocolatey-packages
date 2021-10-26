$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/4.2.3/buildifier-windows-amd64.exe'
    Checksum64 = '6bc575b44b890adc1e55d12b4a03fc19303ef177eb6d1d5fda989bcb7ce6618056fff5e3a5d6388b959ca883a7771d6dd653d5ab062129f57f0d11349276c671'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
