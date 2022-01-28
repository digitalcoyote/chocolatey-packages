$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.18.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'e245f47161a781e2e601ae98c219bc595d5c1d980ef9437a2ff30c330e71f2549d0385d2a6746d492e79df5cb4d8dc4dd851bd16cdf8713d5ec4c6ee8eca553d'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
