$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.19.0/kind-windows-amd64'
$checksum64 = 'a901c6a94e033e4c2f98acee22f276a17c1a997699a417dcc64b1f44c77405ca836b253ec58f413630e866ff524d951501c1f025c67fe92fb6e8ff65dcadaaa9'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
