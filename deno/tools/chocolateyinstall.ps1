$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.22.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'b2d521bd6279c58f3d3096e21940baeb281f3ce30c891d4ae95678154779ccac71e3f9e272f219acc735e1ee78162a9ff2001a1504d39d96f0c9e4c60822b9c5'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
