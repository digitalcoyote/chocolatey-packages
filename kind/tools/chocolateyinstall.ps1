$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.18.0/kind-windows-amd64'
$checksum64 = '5c6ccfae9778bda5523899f8dea0d4ae44fc2bf7102b7bf7a8713e173fae47cbc5a143f0367015e2e2741223eac54f02dfc1a1fb8a8501a9d0228c8d9e98480b'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
