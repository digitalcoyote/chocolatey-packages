$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'bazelisk.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/4.0.1/buildifier-windows-amd64.exe'
    Checksum64 = ''
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
