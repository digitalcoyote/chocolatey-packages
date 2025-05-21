$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.29.0/kind-windows-amd64'
$checksum64 = 'a88feafe71bee0fd020ebca057c4eccde6e489473eb31a5cc301dd8184a0a4288deb20cc9704f38602e1b906614b9a9c9eda386784c609dcbc9458d64011d509'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
