$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.32.0/kind-windows-amd64'
$checksum64 = 'c1b725f7cce229f507ebc624f85a9124b4c54888ce784df76340d04957c34156931558e6c768b4aeefaa6a51100f812540dc46738034c7b13ef65be4032faaf4'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
