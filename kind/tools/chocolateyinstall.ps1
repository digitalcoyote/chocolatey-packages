$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.11.0/kind-windows-amd64'
$checksum64 = '93e0ad0c0f0cb5e3915e20f8e49ff7c75991e7c18b00db14ee3229373c5b1388a60f48b3f3790d491c6f717e3762979f3425b6ae43dd8ab110d956d65c3c85b0'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
