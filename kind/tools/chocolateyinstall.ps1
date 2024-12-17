$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.26.0/kind-windows-amd64'
$checksum64 = '3aea8f7cd72356ce90f294be6753604bda921efc4f46079c5f7134502507c44d4a3e4c4c1218ad91a08619cbaba6cc0aa92d6cda22ace20365d5b162ae8cbc7e'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
