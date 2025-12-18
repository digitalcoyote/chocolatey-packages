$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.31.0/kind-windows-amd64'
$checksum64 = '913ad73dd514974a3f935125f9e35103d9f7b83ed5e1fb5281c4edbe72674d03b44b7101d16eed47b9042db30387f6de2fe1cd00dc3a312d7addf5b605ca23e0'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
