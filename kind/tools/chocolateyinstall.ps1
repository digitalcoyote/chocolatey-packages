$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.14.0/kind-windows-amd64'
$checksum64 = '05d996610ddf6632e2794a68b54f3f1ba3b3ad7d5ee99848d502a2222ea9ecd8e623f47f6e6355177cebc9e13ceabb302dbdb6ddb65152f4c13ea1e2f1d2733c'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
