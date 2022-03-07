$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.12.0/kind-windows-amd64'
$checksum64 = '07fe42d0a8ccef6954f8a3c790f61fbd681e4f44590c7ab3f33caaf0a74e9c3cf77e247c9144d082e69b2a361d51c3e78616e0752e7844f553104bf50c42ded0'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
