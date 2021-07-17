$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'bazelisk.exe'
    URL64 = 'https://github.com/bazelbuild/bazelisk/releases/download/v1.10.1/bazelisk-windows-amd64.exe'
    Checksum64 = '083d59552d2a1540bea5776c5de66fb3095f0d31f54d6bbd7dc759757d2fc0c62ddaf9bbf7697ea255ce018edc9f22e0048d91829a953f3370ae71cc6a55b6f3'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
