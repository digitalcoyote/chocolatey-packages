$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.23.0/kind-windows-amd64'
$checksum64 = '2f9ff5eb8129bb0c0ca9f79d09174a5005ffb82a21d0810a8d7d7fdbaa5a074023ddf33ab73e4292c7c61e8043994fbc0b9d038c71aa7e60e37cef223b935e84'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
