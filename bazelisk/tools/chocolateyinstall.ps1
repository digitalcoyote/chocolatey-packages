$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'bazelisk.exe'
    URL64 = 'https://github.com/bazelbuild/bazelisk/releases/download/v1.11.0/bazelisk-windows-amd64.exe'
    Checksum64 = '152daf14a6b5bc047eeb1bf26f49ed1b959395edcf975f763503d2c0fa8ed30598aaa7974cf18a3cc347f57f0a3125f5f29e3ff467b20ec2afa89b66cccc015a'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
