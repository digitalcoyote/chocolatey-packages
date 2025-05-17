$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.28.0/kind-windows-amd64'
$checksum64 = '63b32173272f17d0fa1e3a7c86a55183dc37ca90e1d226d5fa5af13d9b8ea87ae24f9b22d49a200597424fd88bc1834f2d80b2becfb902cebbdd8a8dbebb9648'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
