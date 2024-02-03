$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.21.0/kind-windows-amd64'
$checksum64 = '652c346749670b3fffd288bc9dcfd914b08b55a18bf090b310ea93c6defe86a442bed35e9b588cd30e0c2aaa4e9bf9cd50b6fed79d23040fa8168a5c70debb72'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
