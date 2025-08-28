$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.30.0/kind-windows-amd64'
$checksum64 = '78475e223a3a601fb9716eb60782f4aefaa2b1ab787a69e184d475f1df2534398cb73ba2345056197f72edfcc81d004b8df41d31a3603931f0885784fe018a1a'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
