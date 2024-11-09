$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.25.0/kind-windows-amd64'
$checksum64 = '91f5216ad632389dd036091d0fc53d377f33cfd4272248d0084fe3067f6126b7bd0071d4ab35397309c91c381515814a5863df8289f0cd392168b51609f074c2'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
