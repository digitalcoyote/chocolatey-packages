$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.12.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '7bae41e90d852b32acc968ce007e7e556ed5904fac57a3ff6c0dabe848dc6ce21ae50b472c35952dc1183053336b96a10df3cf3fdaef769d08d2c4c8f03510da'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
