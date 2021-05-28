$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.11.1/kind-windows-amd64'
$checksum64 = 'a18fec48f6a2fc7e273ccf4be43e8d3ba94abe69102c3e3d8226fbe04e5b7db207e223fc4d702605aaa224dfc9cd9923bd9a13e61b67d68da268550681e2d62c'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
