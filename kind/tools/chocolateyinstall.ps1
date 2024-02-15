$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/kubernetes-sigs/kind/releases/download/v0.22.0/kind-windows-amd64'
$checksum64 = '559c8ba219249f8501b243deb430cc8b842608535fd7c1a775661cd3d1712d6adcb68621708afaadb8b5c89d46c7e1024461ce422c9bc16a85542f037c543c1f'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kind.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
