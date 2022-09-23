$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.16.0/kind-windows-amd64'
$checksum64 = 'bd812501393b8c95aa4f7e7ea6893bc7194829eb9a04f9ac02f838ae4f47a32add6820a5647853af45776ba21c17f4ed52e39daae5cc38b3b5055fc93496cf9e'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
