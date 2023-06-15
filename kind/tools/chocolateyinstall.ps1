$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.20.0/kind-windows-amd64'
$checksum64 = '71921f541b5ea6809db7779bcbcabd26ea9469b3f7aa42b8e6d2720ec63277bc1613b21e474361e342ad02cbb4fec2389793a45afce24936a177c342a12e0c11'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
