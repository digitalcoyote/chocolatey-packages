$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.27.0/kind-windows-amd64'
$checksum64 = 'a5914363d880541d30306c9f9ec9bb9aa00c12695d0b8b6a1aa52c75e017ff5124d8a3b5dc8f5003b5e7f6625fd6145fe474ae77a4cd322096f75bb9064c10c1'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
