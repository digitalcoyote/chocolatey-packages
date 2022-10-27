$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.17.0/kind-windows-amd64'
$checksum64 = '54fda6b0bdbe707a9645c9eccd21d32d9c9df2909dea91367b933c8aa67a0b428f8c33e3be0b70f5cc6d9c46cd7d908508e087ad422430d787f08a8acf187aef'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
