$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.20.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '65fd3c4f06c5fc1596b36cda2bafb90b2fb716ae7f365a41e624efee55baa10c0730704aab771655b016b76855b146a3e933e96aa959b69703696c832e065eca'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
