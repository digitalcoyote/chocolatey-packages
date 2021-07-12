$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'bazelisk.exe'
    URL64 = 'https://github.com/bazelbuild/bazelisk/releases/download/v1.10.0/bazelisk-windows-amd64.exe'
    Checksum64 = 'd95446e4e04630bbe2f9806f20f7a0785c5ef8b9190c5f6a11abbdb5c947f19feb6993e178ce77af189aa854e31676ca2e62626ac267c689fcfb7df52320f22a'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
