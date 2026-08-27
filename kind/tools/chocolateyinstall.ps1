$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.33.0/kind-windows-amd64'
$checksum64 = '9fd99d55e74685eb4ee36af89dd266dc7da9d23567f1e2c8dc3b97a570aed0e7bebc6eeb4d9eae186a9eb7068584210a94e47191752c2bb3ea2bdab6af593cde'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
